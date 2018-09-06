# PhamItoGRL2018
Data for the GRL manuscript "Parameterizing Multiple Ligand Classes Improves the Simulation of Dissolved Iron in the Subtropical North Atlantic". The observational and model data are interpolated into the same grid point using the objective mapping method.  Files include:

1. GA03.mat and GA03_e.mat are Fe data from the two GEOTRACES GA03 cruises(zonal and meridional, respectively)
2. GA03_Control.mat and GA03e_Control.mat: are the model Fe ouput from the Control run
3. GA03_Strongscav.mat and GA03e_Strongscav.mat are the model Fe ouput from the Strong scav. run
4. GA03_WeakerL3 and GA03_e_WeakerL3.mat: are the model iron ouput from the Weaker L3 run
5. GA03_Comb.mat and GA03e_Comb.mat are the model Fe ouput from the Strong scav. + weaker L3 run 
6. GA03_Stronguptake.mat and GA03e_Stronguptake.mat are the model Fe ouput from the Strong uptake run
7. A sample MATLAB script to plot the figure in the paper (using m_map):

