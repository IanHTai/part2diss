king = [2,1,1];

kingx = king(1);
kingy = king(2);
kingz = king(3);
kingtext = 'King';

queen = [1,1,2];

queenx = queen(1);
queeny = queen(2);
queenz = queen(3);
queentext = 'Queen';

man = [3,1,1];

manx = man(1);
many = man(2);
manz = man(3);
mantext = 'Man';

woman = [2,1,2];

womanx = woman(1);
womany = woman(2);
womanz = woman(3);
womantext = 'Woman';

x1 = [kingx, queenx];
x2 = [manx, womanx];
y1 = [kingy, queeny];
y2 = [many, womany];
z1 = [kingz, queenz];
z2 = [manz, womanz];

drawArrow = @(x,y,z) quiver3( x(2),y(2),z(2),x(1)-x(2),y(1)-y(2),z(1)-z(2),1);

scatter3(x1, y1, z1, 'filled', 'blue');
hold on
a1 = drawArrow(x1,y1,z1);
a1.Color = 'black'
a1.LineStyle = '--';
scatter3(x2, y2, z2, 'filled', 'red');
a2 = drawArrow(x2, y2, z2);
a2.Color = 'black'
a2.LineStyle = '--';
set(gca,'xticklabel',[],'yticklabel',[], 'zticklabel', [])
xlim([0.9 3.1]);
ylim([0.9 1.1]);
zlim([0.9 2.1]);
title('Word2Vec Feature Representations');
xlabel('x_1');
ylabel('x_2');
zlabel('x_3');
pbaspect([2 2 1]);
text(king(1)+0.1,king(2),king(3), kingtext);
text(queen(1)+0.1,queen(2),queen(3), queentext);
text(man(1)+0.1,man(2),man(3), mantext);
text(woman(1)+0.1,woman(2),woman(3), womantext);

