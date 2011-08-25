//
//  main.m
//  Shapes-Procedural
//
//  Created by Sean Jones on 25/08/2011.
//  Copyright 2011 BrainPicnic. All rights reserved.
//

#import <Foundation/Foundation.h>


// --------------------------------------------------
// constants for the different kinds of shapes and thier colors


typedef enum {
    kCircle,
    kRectangle,
    KOblateSpheroid
}   ShapeType;

typedef enum {
    kRedColor,
    kGreenColor,
    kBlueColor
}   ShapeColor;


// --------------------------------------------------
// Shape bounding rectangle


typedef struct {
    int x, y, width, height;
}   ShapeRect;


// --------------------------------------------------
// The Shape


typedef struct {
    ShapeType type;
    ShapeColor fillColor;
    ShapeRect bounds;
}   Shape;


// --------------------------------------------------
// convert from the ShapeColor enum value to a human-readable name


NSString *colorName (ShapeColor colorName)
{
    switch (colorName){
        case kRedColor:
            return @"red";
            break;
        case kGreenColor:
            return @"green";
            break;
        case kBlueColor:
            return @"blue";
            break;
    }
    
    return @"no clue";
    
} // colorName


void drawCircle (ShapeRect bounds, ShapeColor fillColor)
{
    NSLog (@"drawing a circle at (%d %d %d %d) in %@",
           bounds.x, bounds.y,
           bounds.width, bounds.height,
           colorName(fillColor));
} // drawCircle


void drawRectangle (ShapeRect bounds, ShapeColor fillColor)
{
    NSLog (@"drawing a rectangle at (%d %d %d %d) in %@",
           bounds.x, bounds.y,
           bounds.width, bounds.height,
           colorName(fillColor));
} // drawRectangle


void drawEgg (ShapeRect bounds, ShapeColor fillColor)
{
    NSLog (@"drawing an egg at (%d %d %d %d) in %@",
           bounds.x, bounds.y,
           bounds.width, bounds.height,
           colorName(fillColor));
} // drawOblateSpheriod


// -------------------------------------------------
// Draw the shapes

void drawShapes (Shape shapes[], int count)
{
    int i;
    
    for (i = 0; i < count; i++) {
        
        switch (shapes[i].type) {
                
            case kCircle:
                drawCircle (shapes[i].bounds, shapes[i].fillColor);
                break;
                
            case kRectangle:
                drawRectangle(shapes[i].bounds, shapes[i].fillColor);
                break;
                
            case KOblateSpheroid:
                drawEgg(shapes[i].bounds, shapes[i].fillColor);
                break;
        }
    }
} // drawShapes



int main (int argc, const char * argv[])
{
    Shape shapes[3];
    
    ShapeRect rect0 = { 0, 0, 10, 30 };
    shapes[0].type = kCircle;
    shapes[0].fillColor = kRedColor;
    shapes[0].bounds = rect0;
    
    ShapeRect rect1 = { 30, 40, 50, 60 };
    shapes[1].type = kRectangle;
    shapes[1].fillColor = kGreenColor;
    shapes[1].bounds = rect1;
    
    ShapeRect rect2 = { 15, 18, 37, 29 };
    shapes[2].type = KOblateSpheroid;
    shapes[2].fillColor = kBlueColor;
    shapes[2].bounds = rect2;
    
    drawShapes (shapes, 3);
    
    return (0);
    
} // main