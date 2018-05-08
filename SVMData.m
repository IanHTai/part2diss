data1x = [];
data1y = [];

data2x = [];
data2y = [];

for n = 0:100
    newPoint = [normrnd(0,0.15), normrnd(0,0.15)];
    data1x = [data1x; newPoint(1)];
    data1y = [data1y; newPoint(2)];
end

for n = 0:100
    newPoint = [normrnd(1,0.15), normrnd(1,0.15)];
    data2x = [data2x; newPoint(1)];
    data2y = [data2y; newPoint(2)];
end

figure1 = figure;
subplot(2,2,1);
scatter(data1x, data1y, 'x', 'red');
axis([-0.5 1.5 -0.5 1.5])
hold on
pbaspect([1 1 1])
grid on
scatter(data2x, data2y, '+', 'blue');
title('Linearly Separable Classes', 'FontSize', 12)
xlabel('x_1')
ylabel('x_2')

data1x = [];
data1y = [];

data2x = [];
data2y = [];

for n = 0:100
    newPoint = [normrnd(0,0.15), normrnd(0,0.15)];
    data1x = [data1x; newPoint(1)];
    data1y = [data1y; newPoint(2)];
end

for n = 0:100
    newPoint = [normrnd(1,0.15), normrnd(1,0.15)];
    data2x = [data2x; newPoint(1)];
    data2y = [data2y; newPoint(2)];
end

subplot(2,2,2);
scatter(data1x, data1y, 'x', 'red');
axis([-0.5 1.5 -0.5 1.5])
hold on
grid on
pbaspect([1 1 1])
scatter(data2x, data1y, '+', 'blue');
scatter(data2x, data2y, 'x', 'red');
scatter(data1x, data2y, '+', 'blue');
title('Linearly Inseparable Classes', 'FontSize', 12)
xlabel('x_1')
ylabel('x_2')


subplot(2,2,3);
z1 = (data1x.*data2x);
scatter3(data1x, data1y, z1, 'x', 'red');
pbaspect([1 1 1])
axis([-0.5 1.5 -0.5 1.5 -0.5 1.5])
hold on
grid on
z2 = (data2x.*data1y);
scatter3(data2x, data1y, z2, '+', 'blue');
z3= (data2x.*data2y);
scatter3(data2x, data2y, z3, 'x', 'red');
z4 = (data1x.*data2y);
scatter3(data1x, data2y, z4, '+', 'blue');
az = 40;
el = 10;
view(az, el);
xlabel('x_1')
ylabel('x_2')
zlabel('x_1 x_2')
title('Previously Linearly Inseparable Classes', 'FontSize', 12)

hold off

subplot(2,2,4);
z1 = (data1x.*data2x);
scatter3(data1x, data1y, z1, 'x', 'red');
pbaspect([1 1 1])
axis([-0.5 1.5 -0.5 1.5 -0.5 1.5])
hold on
grid on
z2 = (data2x.*data1y);
scatter3(data2x, data1y, z2, '+', 'blue');
z3= (data2x.*data2y);
scatter3(data2x, data2y, z3, 'x', 'red');
z4 = (data1x.*data2y);
scatter3(data1x, data2y, z4, '+', 'blue');
xlabel('x_1')
ylabel('x_2')
zlabel('x_1 x_2')
title('Previously Linearly Inseparable Classes, Separated by Linear Plane', 'FontSize', 12)

labels = [];
size1 = size(data1x);
size1 = size1(1);

for n = 1:size1
    labels = [labels; 0];
end
for n = 1:size1
    labels = [labels; 1];
end
for n = 1:size1
    labels = [labels; 0];
end
for n = 1:size1
    labels = [labels; 1];
end
size(labels)

p1 = [-0.2,-0.2,-0.5];
p2 = [1.5,-0.5,0.2];
p3 = [1.5,1.5,1.2];
p4 = [-0.5,1.5,0.2];


points=[p1' p2' p3', p4']; % using the data given in the question
f = fill3(points(1,:),points(2,:),points(3,:),'g');
az = 40;
el = 10;
view(az, el);
alpha 0.5;
grid on
hold off