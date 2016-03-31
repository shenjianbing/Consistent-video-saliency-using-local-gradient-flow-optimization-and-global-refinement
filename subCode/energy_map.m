function [V_Energy1 H_Energy1 V_Energy2 H_Energy2] = energy_map(img,weight)

   V_Energy1 = gradientflow(weight);
   H_Energy1 = gradientflow(rot90(weight,1));
   V_Energy2 = gradientflow(rot90(weight,2));
   H_Energy2 = gradientflow(rot90(weight,3)); 
     
   H_Energy1 = rot90(H_Energy1,3);
   V_Energy2 = rot90(V_Energy2,2);
   H_Energy2 = rot90(H_Energy2,1);
end