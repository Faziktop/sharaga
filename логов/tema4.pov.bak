#include "colors.inc"
#include "textures.inc" 
   /*
 camera {
   location <-25, 10, -35>
   look_at <2, 10, 0>
 }   
   
 camera {
   location <-5, 7.5, -30>
   look_at <2, 7.5, 0>
 } 
  */    
   
   
   
   
// вид спереди   
 camera {
   location <5, 17.5, -35>
   look_at <5, 7.5, 0>
 } 
 
 
// вид справа
/* 
 camera {
   location <50, 7.5, 0>
   look_at <5, 7.5, 0>
 }
 */

light_source { <-30, 10, -30> White
 fade_power 2      // Квадратичное затухание (как в реальности)
    fade_distance 30  }  
 
 
 light_source { <30, 10, -3> White 
    fade_power 2      // Квадратичное затухание (как в реальности)
    fade_distance 30  } 
 

 
 background{ White}
 
sky_sphere {
    pigment {
        image_map {
            jpeg "sky2.jpg"
            once
            map_type 1
            interpolate 3
        }
        scale <0.3, 0.3, 01>    // ????????? ??????? ? 2 ????
                                // (?????? ?????? ?????? ? ????)
    }
    rotate <0, 0, 0>
}
                                                             
                                                             
                                                             
//========================================================
//
//             Т  E  К  С  Т  У  Р  Ы  
//
//========================================================

               
               
               
#declare shkaf_texture = 
 texture {
    pigment { color rgb <0.33, 0.33, 0.38> } // Тёмно-серый с синеватым оттенком
    finish {
      ambient 0.05
      diffuse 0.7          // Хорошее рассеивание света
      specular 0.6         // Заметные блики
      roughness 0.05       // Гладкая поверхность
      metallic 0           // Не металлический 
      reflection 0.007
    }
  }      
      
      
#declare computer_texture = texture {
    pigment { color rgb <0.05, 0.05, 0.08> }
    finish {
        ambient 0.02
        diffuse 0.3
        specular 0.8
        
        reflection  0.007
    }
}


#declare middle_part_of_computer_texture = texture {
    pigment { color rgb <0.0, 0.0, 0.0> }
    finish {
        ambient 0.02
        diffuse 0.3
        specular 0.8
        
        reflection  0.07
    }
}

#declare silver_rod_texture = texture{
    pigment { color rgb <0.7, 0.7, 0.72> } // Светло-серый с легким голубым оттенком
    finish {
        ambient 0.1
        diffuse 0.3          // Низкий диффуз, так как металл больше отражает, чем рассеивает
        
        metallic             // Обязательный параметр: блики принимают цвет пигмента
        specular 0.8         // Яркий блик
        roughness 0.05       // Размывает блик (делает его матовым)
        
        reflection {
            0.4, 0.7         // Отражает окружение, но не полностью
            metallic         // Отражения тоже окрашиваются в цвет металла
        }
    }
    // Главный секрет матовости — микро-неровности поверхности
    normal {
        granite 0.003        // Очень мелкая зернистость
        scale 0.001           // Уменьшаем зерно до едва заметного
    }
   
}

// текстура стекла
#declare Glass_Bottle_Texture = texture {
    pigment { 
        color rgbf <0.98, 0.98, 0.98, 0.99> // Зеленоватый цвет с высокой прозрачностью (f)
    }
    finish {
        specular 0.95        // Размер и яркость блика
        roughness 0.001     // Гладкость поверхности
        reflection {
            0.1, 0.5        // Минимальное и максимальное отражение
            fresnel on      // Эффект Френеля для реализма
        }
        conserve_energy     // Сохранение энергии для корректных бликов
    }
}



//========================================================
//
//             О  Б  Ъ  Е  К  Т  Ы  
//
//========================================================


// LOVE_COFEE_PRINT

 #declare love_coffee_print=union{
box {
   < 0, 0, 0 >,  // левый нижний угол
   < 19, 5, 0 >  // правый верхний угол
   texture {
      pigment {
         image_map {
            "love_coffee.png"
            once
            
            
         }
         
          scale <18.5, 3.7, 5.0>
      }
       
   }
   
}

} 


#declare gift_print=union{
box {
   < 0, 0, 0 >,  // левый нижний угол
   < 5, 4, 0 >  // правый верхний угол
   texture {
      pigment {
         image_map {
            "gift.png"
            once
            
            
         }
          scale <5, 3.7, 5.0>
      }
     
   }
}

}

#declare for_customers_print=union{
   box {
      < 0, 0, 0 >,  // левый нижний угол
      < 2.6, 1.3, 0.00001 >  // правый верхний угол
      texture {
         pigment {
            image_map {
               "for_customers.png"
               once
            }
            scale <2.6, 1.2, 1>
         }         
      }
   }
}
    
    
    
     
     
     
     
    

#declare computer_panel_print=union{
   box {
      < 0, 0, 0 >,  // левый нижний угол
      < 10, 10, 0.00001 >  // правый верхний угол
      texture {
         pigment {
            image_map {
               "computer_panel.png"
               once
            }
            scale <2.7, 6, 1>
         }         
      }
   }
}
object {
      computer_panel_print
      translate<14.6, 6.2, 2.0999>
}







#declare qr_print=union{
   box {
      < 0, 0, 0 >,  // левый нижний угол
      < 10, 10, 0.00001 >  // правый верхний угол
      texture {
         pigment {
            image_map {
               "qr.png"
               once
            }
            scale <1.2, 1.9, 1>
         }         
      }
   }
}
object {
      qr_print
      translate<9.78, 9.7, 1.9999>
}  






#declare instruction_print=union{
   box {
      < 0, 0, 0 >,  // левый нижний угол
      < 10, 10, 0.00001 >  // правый верхний угол
      texture {
         pigment {
            image_map {
               "instruction.png"
               once
            }
            scale <2., 3.6, 1>
         }         
      }
   }
}
object {
      instruction_print
      translate<9.3, 2.7, 1.9999>
}

 
 
 
 
 
 

#declare wood_back=union{
 box { <0, 0, 0>, <9-0.25, 19, -0.1>
      texture {
         pigment {
            wood
            scale <2, 0.2, 2>
            turbulence 0.2
            color_map {
               [0.0 colour rgb <0.55, 0.35, 0.20>]
               [0.3 colour rgb <0.65, 0.42, 0.25>]
               [0.6 colour rgb <0.70, 0.45, 0.28>]
               [1.0 colour rgb <0.50, 0.30, 0.18>]
            }
         }
         finish {
            diffuse 0.7
            
            specular 0.3
            roughness 0.02
         }
      }
   }
}
object {
      wood_back
      translate<0.25, 0, 13.1>
}





#declare glass_door=union{   // стеклянная дверца
   box { <0, 0, 0>,              
      < 8, 5.7, 0.25>             
      texture {                  
         Glass_Bottle_Texture 
      }                          
   } 
}
object {
      glass_door    // стеклянная дверца
      translate<2.5, 11.3, 10.2-0.25>
}






#declare gray_part_left1=union{   // перегородка полки для надписи "салфетки"
   box { <0, 0, 0>,              
      < 4.5, 1.2, 0.25>             
      texture {                  
         shkaf_texture 
      }                          
   } 
}

object {
      gray_part_left1    // перегородка полки для надписи "салфетки"
      translate<0, 8.3, 10.03>
}







#declare gray_part_left2=union{  // перегородка полки для надписи "палочки"
   box { <0, 0, 0>,              
      < 2.5, 1.6, 0.25>             
      texture {                  
         shkaf_texture 
      }                          
   } 
}

object {
      gray_part_left2    // перегородка полки для надписи "палочки"
      translate<0, 11.3, 10.03>
}






#declare salfetki_print=union{   // надпись "салфетки"
   box {
      <0, 0, 0>,              
      < 3, 1.2, -0.0001>  
      texture {
         pigment {
            image_map {
               "salfetki.png"
               once
            }
            scale <2.7, 0.6, 1>
         }         
      }
   }
}
object {
      salfetki_print     // надпись "салфетки"
      translate<1, 8.8, 10.02-0.01>
}



 

                                                                                                                             
#declare sticks_print=union{   // надпись "палочки"
   box {
       <0, 0, 0>,              
      < 2.5, 1.6, 0.001>
      texture {
         pigment {
            image_map {
               "sticks.png"
               once
            }
            scale <2.15, 0.55, 1>
         }         
      }
   }
}

object {
      sticks_print    // надпись "палочки"
      translate<0.3, 12.2, 10.02-0.01>
}








#declare krishki_print=union{   // надпись "крышки"
   box {
      <0, 0, 0>,              
      < 3, 2, -0.0001>  
      texture {
         pigment {
            image_map {
               "krishki.png"
               once
            }
            scale <2.9, 1.6, 1>
         }         
      }
   }
}
object {
      krishki_print     // надпись "крышки"
      translate<5, 9, 13>
}

#declare sugar_print=union{   // надпись "сахар"
   box {
      <0, 0, 0>,              
      < 3, 2, -0.0001>  
      texture {
         pigment {
            image_map {
               "sugar.png"
               once
            }
            scale <2., 0.5, 1>
         }         
      }
   }
}
object {
      sugar_print     // надпись "сахар"
      translate<2.6, 16.5, 9.999-0.25>
}







#declare bottom_part_of_computer=union{
 box { <0, 0, 0>,                //Нижний ближний левый угол 
      < 7.5, 1.1, 11>               //Дальний верхний правый угол
      texture {                  
         computer_texture 
      }                          
   }                               
}

#declare silver_part_of_computer=union{
 box { <0, 0, 0>,                //Нижний ближний левый угол 
      < 1.3, 11.4, 11>               //Дальний верхний правый угол
      texture {                  
         silver_rod_texture 
      }                          
   }                               
}

#declare middle_part_of_computer = difference {
    box { <0, 0, 0>, <6.4, 11.4, 10.9>    // Внешний блок
        
    }
    box { <2.3, 0, -1>, <5, 3, 2>        // Вырезаемая часть (доходит до правого края)
        
    }
    
    texture { middle_part_of_computer_texture }
}



object {
      for_customers_print
      translate<12, 12.9, 1.999>
}

object {
      love_coffee_print
     translate<0.3, 19.5, -0.0001>
} 


object {
      gift_print
     translate<13.5, 14.3, 1.999>
}  
  
  
object {
     bottom_part_of_computer
     translate<12.3, 0.1, 2>
}

object {
     silver_part_of_computer
     translate<12.3, 1.25, 2>
} 

object {
     silver_part_of_computer
     translate<12.3+7.5-1.3, 1.25, 2>
}

object {
     middle_part_of_computer
     translate<12.3, 1.25, 2+0.1>
}

 
 //Построение параллелепипеда. 
#declare polka=union{
 box { <0, 0, 0>,                //Нижний ближний левый угол 
      < 19, 0.2625, 13>               //Дальний верхний правый угол
      texture {                  
         shkaf_texture 
      }                          
   }                               
} 

#declare middle_polka=union{
 box { <-0.5, -0.5, -0.5>,              
      < 20.5, 0, 13.5>              
      texture {                  
         shkaf_texture 
      }                          
   }                               
}   




                          
// верхняя часть       
#declare verh=union{
 box { <0, 0, 0>,            
      < 20, 5, 13>          
      texture {                  
         shkaf_texture
      }                          
   }                               
}  
   
   
// перегародка
#declare gray_part=union{
   box { <9, 0,2>,             
      < 12., 21.75, 13>         
      texture {                  
         shkaf_texture
      }                          
   } 
}   

#declare gray_part2=union{
   box { <9, 0, 2>,              
      < 20, -9, 13>             
      texture {                  
         shkaf_texture 
      }                          
   } 
}  

#declare boka=union{
   box { <0, 0, 0>,               
      < 1, -12.75, 13>              
      texture {                  
         shkaf_texture 
      }                          
   } 
} 

#declare back_part=union{
   box { <0, 0, 0>,               
      < 20, 37.25-0.5, 0.5>              
      texture {                  
         shkaf_texture 
      }                          
   } 
} 

#declare polka_bottle_top=union{
   box { <0, 0, 0>,               
      <10, 0.225, 3>              
      texture {                  
         shkaf_texture 
      }                          
   } 
}
#declare polka_bottle_left=union{
   box { <0, 0, 0>,               
      <0.3, 16.75, 3>              
      texture {                  
         shkaf_texture 
      }                          
   } 
}

#declare polka_bottle_middle=union{
   box { <0, 0, 0>,               
      <0.3, 8.25, 3>              
      texture {                  
         shkaf_texture 
      }                          
   } 
}
 
#declare polka_bottle_middle2=union{
   box { <0, 0, 0>,               
      <0.3, 5.5, 3>              
      texture {                  
         shkaf_texture 
      }                          
   } 
} 

#declare wood_door = union {
   box { <0, 0, 0>, <6, 12, -0.3>
      texture {
         pigment {
            wood
            scale <0.2, 2, 0.2>
            turbulence 0.2
            color_map {
               [0.0 colour rgb <0.55, 0.35, 0.20>]
               [0.3 colour rgb <0.65, 0.42, 0.25>]
               [0.6 colour rgb <0.70, 0.45, 0.28>]
               [1.0 colour rgb <0.50, 0.30, 0.18>]
            }
         }
         finish {
            diffuse 0.7
            
            specular 0.3
            roughness 0.02
         }
      }
   }
}



#declare silver_rod=union {
   cylinder {
           <0, 0, 0>,
            <9, 0, 0>, 0.12
           
           texture {
                silver_rod_texture
           }
      }

}  

// Текстура стекла


#declare Glass_Interior = interior {
    ior 1.5                 // Коэффициент преломления стекла (Index of Refraction)
    fade_distance 2         // Затухание света внутри (для толстого стекла)
    fade_color <0.1, 0.3, 0.1>
    fade_power 1001         // Метод затухания
}
    
#declare Glass_Thickness = 0.07; // Толщина стенки   
    
#declare Bottle = difference {

   sor {
    10, // Number of points
    <0.0,  0.0>,
    <0.7,  0>,
    <0.7,  0.75>,
    <0.7,  1.5>,
    <0.7,  2.25>,
    <0.7,  3>,
    <0.7,  3.75>,
    <0.35,  4.5>,
    <0.35,  6>,
    <0.2, 6.75>
     
    }  
    
   sor {
    10, // Number of points
    <0.0,  0+Glass_Thickness>, // Bottom center
    <0.7-Glass_Thickness,  0+Glass_Thickness>,
    <0.7-Glass_Thickness,  0.75>,
    <0.7-Glass_Thickness,  1.5>,
    <0.7-Glass_Thickness,  2.25>, // Bottom edge
    <0.7-Glass_Thickness,  3>,
    <0.7-Glass_Thickness,  3.75-Glass_Thickness>,
    <0.35-Glass_Thickness,  4.5-Glass_Thickness>,
    <0.35-Glass_Thickness,  6>,
    <0.3-Glass_Thickness, 6.75>
     
    }
     
    texture   {Glass_Bottle_Texture}
    interior { Glass_Interior }
}
 
#declare dozator=union{   
      #declare cylinder_texture = texture {
            pigment { color rgb <1, 1, 1> } // Черный цвет дает самое чистое зеркало
             finish {
               ambient 0             // Не светится сам по себе
               diffuse 0.5             // Не рассеивает свет (матовость убрана)
               reflection 0.5        // Полное отражение (как идеальное зеркало)
               roughness 0.001       // Идеально гладкая поверхность
             }
           
      }    
      
      cylinder {
           <0, 6, 0>, <0, 6.525, 0>, 0.4
           
           texture {
                cylinder_texture
           }
      }   
      
      cylinder {
           <0, 6.525, 0>, <0, 6.75, 0>, 0.25
           
           texture {
                cylinder_texture
           }
      }
      
      cylinder {
           <0, 6.75, 0>, <0, 7.725, 0>, 0.07
           
           texture {
                cylinder_texture
           }
      } 
      
      cylinder {
           <0, 6, 0>, <0, 4.275, 0>, 0.125
           
           texture {
                cylinder_texture
           }
      } 
      
      cylinder {
           <0, 4.275, 0>, <0, 0.225, 0>, 0.06
           
           texture {
                pigment { color rgb <0.5, 0.5, 0.5> } // Черный цвет дает самое чистое зеркало
               finish {
               ambient 0             // Не светится сам по себе
               diffuse 0.5             // Не рассеивает свет (матовость убрана)
               reflection 0.5        // Полное отражение (как идеальное зеркало)
               roughness 0.001       // Идеально гладкая поверхность
             }
           }
      }
      
      cone {
        <0, 7.725, 0>, 0.07,    // Центр и радиус нижнего основания (Base)
        <0, 7.95, 0>, 0.23     // Центр и радиус верхнего основания (Cap)
        texture {
                cylinder_texture
           }            
      }
      
      cylinder {
           <0, 7.95, 0>,
            <0, 8.025, 0>, 0.23
           
           texture {
                cylinder_texture
           }
      }
      
      box { <0-0.05, 7.95, 0>,               
      <0+0.05, 8.025, -1.125>              
      texture { cylinder_texture } 
      }                          
    
      
      
}

#declare print=union{

}


#declare finished_bottle=union{
    object {    
      Bottle
    }
    
    object {
      dozator
    }
    
    object {
      print
    }
    
    
    

} 



#declare silver_ring = difference {

   cylinder {
           <0, 0, 0>,
            <0, 0, 0.075>, 1.4
           
         
   }
   
   cylinder {
           <0, 0, -0.075>,
            <0, 0, 0.375>, 0.825
           
         
   }
   
     
    texture   { silver_rod_texture }
    
}

#declare stakan = difference {
      cone {
           <0, 0, 0>, 0.7,    
           <0, 0, -1.5>, 0.5        
           pigment { color Red }
        }
        
      cone {
           <0, 0, -0.02>, 0.68,    
           <0, 0, -1.52>, 0.48        
           pigment { color Red }
        }

}
#declare stakan_full = union {
 
   object { 
       silver_ring
   }
   
   object {
       stakan
   }
   
   cylinder {
           <0, 0, -1.4>,
            <0, 0, -1.41>, 0.49
            pigment { color White }
         
   }
   
   

}

// coffee machine    
#declare shkaf=union{ 
   object {
      stakan_full
      translate <10.55, 13.6, 1.985>
   }
   
   object {
      stakan_full
      translate <10.55, 16.8, 1.985>
   }

   object {
      silver_rod
      translate <0.05, 1.2, 10.2>
   }
   object {
      silver_rod
      translate <0.05, 4.5, 10.6>
   }
   object {
      silver_rod
      translate <0.05, 4.5, 13>
   }
      
   object {   
      middle_polka
   }  
   
   object {   
      polka
      translate<0, -12.75, 0>
   } 
   
   object {   
      polka
      translate<0, -6.375, 0>
   }
   object {   
      verh
      translate<0, 19., 0>
   }     
   object {
    gray_part
   
   } 
   object {
    gray_part2 
    translate<0, 21.75, 0>
   
   }   
   
   object {
    boka 
    translate<0, 0, 0>
   
   }
   object {
    boka 
    translate<20-1-1, 0, 0>
   
   }     
   
   object {
    back_part 
    translate<0, -12.75, 13>  
   }
   
   object {
    polka_bottle_top 
    translate<0, 8.25, 13-3>  
   }
   
   object {
    polka_bottle_top 
    translate<0, 11.25, 13-3>  
   }
   
   object {
    polka_bottle_top 
    translate<0, 16.75, 13-3>  
   }
     
   object {
    polka_bottle_left
    translate<0, 0, 13-3>  
   }  
   object {
    polka_bottle_left
    translate<4.5-0.15, 0, 13-3>  
   } 
   
   object {
    polka_bottle_left
    translate<9-0.3, 0, 13-3>  
   }
   
   object {
    polka_bottle_middle
    translate<2.25-0.075, 0, 13-3>  
   } 
   
   object {
    polka_bottle_middle
    translate<6.6-0.075, 0, 13-3>  
   }  
   
   object {
    polka_bottle_middle2
    translate<6.6-0.075, 11.25, 13-3>  
   } 
   
   object {
    polka_bottle_middle2
    translate<2.-0.075+0.5, 11.25, 13-3>  
   }
   
   object {
    wood_door
    translate<0.5, -12.6, 0>  
   }   
   
   object {
    wood_door
    translate<0.5+6+0.15, -12.6, 0>  
   }
   
   object {
    wood_door
    translate<0.5+6+0.15+6.1+0.15, -12.6, 0>  
   }    
   
   object {
      finished_bottle
      translate<1.3, 0, 11>  
   }
   
   object {
      finished_bottle
      translate<1.3+2.1, 0, 11>  
   }
   
   object {
      finished_bottle
      translate<1.3+4.25, 0, 11>  
   }
}
 
 
object {
   shkaf
}

   



 plane{ y,-18
          pigment { checker White,Black scale 3 }
 }