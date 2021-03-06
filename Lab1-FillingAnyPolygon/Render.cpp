//
// Created by Amado Garcia on 8/31/20.
//
#include <iostream>
#include "Render.h"

#include "Render.h"
#include <vector>
#include <cmath>
using namespace std;

Render::Render(){
}
vector<unsigned char> Render::fileHeader()
{
    int fileSize = 14 + 40 + width * height * 3;
    vector<unsigned char> fileHeader
            {
                    'B', 'M',
                    (unsigned char)(fileSize), 0, 0 , 0,
                    0, 0, 0, 0,
                    54, 0, 0, 0
            };
    return fileHeader;
}
vector<unsigned char> Render::infoHeader()
{
    int imageSize = this->width * this->height * 3;
    vector<unsigned char> infoHeader
            {
                    40,0,0,0,
                    (unsigned char)(width),(unsigned char)(width >> 8),(unsigned char)(width >> 16),(unsigned char)(width >> 24),
                    (unsigned char)(height),(unsigned char)(height >> 8),(unsigned char)(height >> 16),(unsigned char)(height >> 24),
                    1,0,
                    24,0,0,0,
                    0,0,
                    (unsigned char)(imageSize),0,0,0,
                    0,0,0,0,
                    0,0,0,0,
                    0,0,0,0,
                    0,0,0,0
            };

    return infoHeader;
}
void Render::glPoint(int x, int y) {
//    cout<<x<<","<<y<<endl;
    if(x >= 0 && y >= 0 && x < width && y < height && x < (vW + vX) && y < (vH + vY))
    {
        framebuffer[x][y][0] = pointColor[0];
        framebuffer[x][y][1] = pointColor[1];
        framebuffer[x][y][2] = pointColor[2];
    }
}
void Render::glClear(bool isAllWindow)
{
    if(!isAllWindow)
    {
        for (int i = vY; i < (vY + vH); i++)
        {
            for (int j = vX; j < (vX + vW); j++)
            {
                for (int k = 0; k < 3; k++)
                {
                    framebuffer[j][i][k] = (unsigned char)backgroundColor[k];
                }
            }
        }
    }
    else
    {
        for (int i = 0; i < height; i++)
        {
            for (int j = 0; j < width; j++)
            {
                for (int k = 0; k < 3; k++)
                {
                    framebuffer[j][i][k] = (unsigned char)backgroundColor[k];
                }
            }
        }
    }
}

void Render::glColor(double r, double g, double b)
{
    pointColor[2] = (unsigned char) (r * 255);
    pointColor[1] = (unsigned char) (g * 255);
    pointColor[0] = (unsigned char) (b * 255);
}
void Render::glClearColor(int r, int g, int b)
{
    backgroundColor[2] = (unsigned char) (r * 255);
    backgroundColor[1] = (unsigned char) (g * 255);
    backgroundColor[0] = (unsigned char) (b * 255);

}
void Render::glCreateWindow(int width, int height)
{
    vector<vector<vector<unsigned char>>>framebuffer(width, vector<vector<unsigned char >>(height, vector<unsigned char >(3)));
    this->framebuffer = framebuffer;
    this->width = width;
    this->height = height;
}
void Render::glViewPort(int vX, int vY, int vW, int vH)
{
    this->vX = vX;
    this->vY = vY;
    this->vW = vW;
    this->vH = vH;
}
void Render::glVertex(int x, int y)
{
    int pointX = (x + 1) * (this->vW * 0.5) + this->vX;
    int pointY= (y + 1) * (this->vH * 0.5) + this->vY;
    glPoint(pointX, pointY);
}
void Render::glFinish(char *filename)
{
    FILE* imageFile = fopen(filename, "wb");

    vector<unsigned char> file = fileHeader();
    for(auto f: file)
    {
        fwrite(&f, 1, 1, imageFile);
    }

    vector<unsigned char> header = infoHeader();
    for(auto h: header)
    {
        fwrite(&h, 1, 1, imageFile);
    }

    for (int i = 0; i < height; i++)
    {
        for (int j = 0; j < width; j++)
        {
            for (int k = 0; k < 3; k++)
            {
                fwrite(&framebuffer[j][i][k], 1, 1, imageFile);
            }
        }
    }
    fclose(imageFile);
}
// This Bresehnham's algorithm implementation was taken from class's code, adapted  and modified a little bit to use it with viewport.
void Render::glLine(int x1, int y1, int x2, int y2)
{
    if(!isPixels)
    {
        x1 = glAdaptToViewportXCoordinates(x1);
        x2 = glAdaptToViewportXCoordinates(x2);
        y1 = glAdaptToViewportYCoordinates(y1);
        y2 = glAdaptToViewportYCoordinates(y2);
    }

    else
    {
        x1 = x1 + vX;
        x2 = x2 + vX;
        y1 = y1 + vY;
        y2 = y2 + vY;
    }

    int dy = abs(y2 - y1);
    int dx = abs(x2 - x1);

    bool steep = dy > dx;

    if(steep)
    {
        swap(x1, y1);
        swap(x2, y2);
        dy = abs(y2 - y1);
        dx = abs(x2 - x1);
    }

    if(x1 > x2)
    {
        swap(x1, x2);
        swap(y1, y2);
    }

    int offset = 0;
    int threshold = 1;
    int y = y1;

    for(auto x{x1}; x <= x2; ++x)
    {
        if(steep)
        {
            glPoint(y, x);
            polygonBorders.push_back(make_tuple(y, x));

        }
        else
        {
            glPoint(x, y);
            polygonBorders.push_back(make_tuple(x, y));
        }
        offset += dy * 2;

        if(offset >= threshold)
        {
            y += y1 < y2 ? 1 : - 1;
            threshold += 2 * dx;
        }
    }
}

/**
 *These methods (fillPolygon and isInside) are an adaptation of the "Even and odd rule", taken from https://handwiki.org/wiki/Even%E2%80%93odd_rule
 */
void Render::fillPolygon(vector<int> xCoordinates, vector<int> yCoordinates) {
   auto sortedXCoordinates = xCoordinates;
   auto sortedYCoordinates = yCoordinates;
   sort(sortedXCoordinates.begin(), sortedXCoordinates.end());
   sort(sortedYCoordinates.begin(), sortedYCoordinates.end());
   int minX{sortedXCoordinates[0]};
   int minY{sortedYCoordinates[0]};
   int maxX{sortedXCoordinates[sortedXCoordinates.size() - 1]};
   int maxY{sortedYCoordinates[sortedYCoordinates.size() - 1]};
    for (int y{minY}; y < maxY; ++y)
    {
        for (int x{minX}; x < maxX; ++x)
        {
            if(isInside(x, y, xCoordinates, yCoordinates))
                glPoint(x,y);
        }
    }
}

bool Render::isInside(int x, int y, vector<int> xCoordinates, vector<int> yCoordinates)
{
    vector<int> xC = xCoordinates;
    vector<int> yC = yCoordinates;

    int lenght = xCoordinates.size();
    int j = lenght - 1;
    bool isInside = false;

    for (auto i{0}; i < lenght; i++)
    {
        if((yC[i] > y ) != (yC[j] > y)
        && (x < xC[i] + (xC[j] - xC[i])
        * (y - yC[i])/(yC[j] - yC[i])))
        {
            isInside = !isInside;
        }
        j = i;
    }

    return isInside;
}
inline int Render:: glAdaptToViewportXCoordinates(int x)
{
    return (x + 1) * (this->vW * 0.5) + this->vX;
}
inline int Render:: glAdaptToViewportYCoordinates(int y)
{
    return (y + 1) * (this->vH * 0.5) + this->vY;
}
inline void Render:: swap(int &v1, int &v2){
    int tempV1 = v1;
    v1 = v2;
    v2 = tempV1;
}
void Render::setIsPixels(bool isPixels)
{
    this->isPixels = isPixels;
}
