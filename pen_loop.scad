//Copyright Hsiao-yu Chen 2016

//Pen Loop, Style 1



//model for a simple pen loop for notebooks and journals.
//
// Designed for mounting on first or last pages of a notebook.
//

//example for LAMY Safari fountain pens:
//
//height=20;
//inner_dia = 15;
//thickness = 1.3;
//tab_width = 25;
//


module pen_loop_1(height, inner_dia, thickness, tab_width, smoothness = 180){
    radius = inner_dia / 2.0;
    

    difference(){
        union () {
            //a tab to attach to paper
            translate([0, radius, 0])
                cube(size =[tab_width, thickness / 2.0, height]);
      
            //main body cylindar
            cylinder($fn=smoothness, h=height, d=inner_dia+thickness);
            
            //fillet
            translate([0,0 ,0]) cube(size=[radius, inner_dia / 2.0, height]);
        }; //union
        
        //hallow out inner_diameter cylindar
        cylinder($fn=smoothness,  h=height, d=inner_dia);
        };
} //module
        



pen_loop_1(10, 13, 1.1, 25, 180);