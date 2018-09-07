%%  A sample MATLAB script to plot the figures of Fe distribution along the GA03 transect
%%  reported in Pham and Ito 2018, GRL manuscript 
close all;clear all;clc;
% load the data
load('GA03_obs.mat'); 
load('GA03_WeakerL3.mat');
% define grid along the cruise track GA03
xtr = [290:1:345]; % long - grid
ztr = [5:10:200 250:50:700 780:80:1100 1200:120:5500]; % dep - grid


figure(1);
subplot('position',[.20 .38 .65 .50]);
pcolor(xtr,-ztr,GA03_Fe_obs');
shading flat;
% colorbar;
caxis([0 1.6]);
axis([290 345 -1000 0]);
%xlabel('Latitude','fontsize',14);
%ylabel('Depth (meters)','fontsize',14);
title('GEOTRACES, GA03 cruise','fontsize',20);
ax=get(gcf,'currentaxes');
set(ax,'xtick',[]);
set(ax,'fontsize',16);
ylabel('Depth (meters)','fontsize',20);


subplot('position',[.20 .10 .65 .25]);
pcolor(xtr,-ztr,GA03_Fe_obs');
shading flat;
% colorbar;
caxis([0 1.6]);
axis([290 345 -5400 -1000]);
ax=get(gcf,'currentaxes');
months = ['70W';
            '60W';
            '50W';
            '40W';
            '30W';
            '20W';];
set(gca,'XTickLabel',months)
set(ax,'fontsize',16);
xlabel('Longitude','fontsize',20);


figure(2);
subplot('position',[.20 .38 .65 .50]);
pcolor(xtr,-ztr,GA03_Fe_model');
shading flat;
% colorbar;
caxis([0 1.6]);
axis([290 345 -1000 0])
title('Weaker L3','fontsize',24);
ax=get(gcf,'currentaxes');
% set(ax,'xtick',[]);
set(ax,'xtick',[]);
set(ax,'fontsize',16);
ylabel('Depth (meters)','fontsize',20);

subplot('position',[.20 .10 .65 .25]);
pcolor(xtr,-ztr,GA03_Fe_model');
shading flat;
% colorbar;
caxis([0 1.6]);
ax=get(gcf,'currentaxes');
months = ['70W';
            '60W';
            '50W';
            '40W';
            '30W';
            '20W';];
set(gca,'XTickLabel',months)
axis([290 345 -5400 -1000])
set(ax,'fontsize',16);
xlabel('Longitude','fontsize',20);