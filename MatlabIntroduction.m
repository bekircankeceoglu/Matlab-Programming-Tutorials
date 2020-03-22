% Matlab Introduction
%% Script files, command console, Workspace (variables)

%% Basic Calculations
% try on console
2 + 3 % sum
5 * 7 % multip.
2 ^ 3 % power
sqrt(4) % square root
3+2*4/4 % math operation
pi     % pi number
sin(pi/2) % trig. 
exp(1)    % e power 1
5 + 3*i   % complex numbers
5 + 3i    % complex numbers
1 + sin(pi/2)*4+exp(2) % math operation

%% Creating Variables and operations
x = 10   % x variable is 2
2*x
log(x)   % operaitons
log10(x)
ans + 1
pi = 4
doc exp

%% Showing variables and deleting
who % show variables
whos % show detailed variables
clc 
clear

%% Matrix Operations
% matrix declarations
vector = [1 5 -2]
vector = [1, 5, -2]
vector = [1; 5; -2]
vector2 = [1 2; 2 3]
clear vector
whos
matrix = [2 2; 2 2]
% add matrix
matrix = [matrix [3;3]]
matrix = [matrix; [4 4 4]]
% select 1. row
matrix(1,:)
% select 2 column
matrix(:,2)

% matrix equations
A = [1 2 3;3 3 4] % 2x3 matrix
B = [1 2 -1; 3 5 2; -2 -5 2] % 3x3 matrix
C = [-1 0 1; -1 0 2] % 2x3 matrix
M = A+C
M=A*B
M = B^-1 % inverse
M = B^2  % power 2
M = B*B
M = B*B*B % power 3
M = B^3
M = A' % transpoze

% matrix operation on elements
M = A.^2
M = B.^2

% standart functions on matrixes
sqrt(B)
M = exp(B) % exp of every elemnt

% min, max and other operations 
a=[-1 6 2 -2]
b=[2 7 -9 4]
min(a) % min value of vector
max(a) % max value of vector 
length(a) % length of matrix
sort(a) % vector sorting
mean(a) % ortalama mean val
median(a) % median of vector
a(end) % show last elemnt of a

% complex number operations
karmasik = [1+j, j, 2*j]
genlik = abs(karmasik) % amplitude
faz = angle(karmasik) % phase

% special matrixes
A=zeros(3) % 3x3 zero 
A=zeros(3,2) %3x2 zero 
A=ones(4)   
A=eye(3) % 3x3 birim
D=rand(3) % 3x3 random

% linear algebra operations
A=[0 1 2; 3 4 3;2 1 0]
diag(A) % Matrisin k��egeni
inv(A) % Matrisin tersi
A^-1 % Matrisin tersi
A' % Matrisin transpozesi
[V,D]=eig(A) % Matrisin �zde�erleri ve �zvekt�rleri
det(A) % Matrisin determinant�
rank(A) % Matrisin rank�

%% �ekil Cizdirme
t = 0:0.1:10 % 0'dan 10'abirer birer artan zaman vekt�r�
s = sin(t); % t'nin sin�s�n� al
plot(t,s); % s'yi t'ye kar�� �izdir
plot(t,s,'k*'); % Renk ve �izdirme bi�imleri de�i�tirilebilir. (bkz. doc
close; % A��k olan �ekli kapat

% script acilir
t = 0:0.01:1; % 0'dan 1'e kadar 0.01'lik ad�mlarla artan zaman vekt�r�
A = 8;
f_1 = 2;
s_1 = A*sin(2*pi*f_1*t); % Genli�i 8, frekans� 2 Hz olan sin�s
f_2 = 4;
s_2 = A*cos(2*pi*f_2*t); % Genli�i 8, frekans� 4 Hz olan kosin�s
plot(t,s_1); % s_1'i �izer
plot(t,s_2); % A��k �ekli silip �zerine s_2'yi �izer

% ayri cizdirme
plot(t,s_1); % s_1'i �izer
figure; % Yeni bir �ekil a�ar
plot(t,s_2); % s_2'yi yeni �ekle �izer

% �st �ste cizdirme
plot(t,s_1); % Birinci �ekli �izdir
hold on; % �ekli tut
plot(t,s_2); % �kinci �ekli �izdir
hold off; % �ekli b�rak

title('�ki g�zel fonksiyon'); % �ekle ba�l�k koy
ylabel('Genlik'); % y eksenine etiket ver
xlabel('Zaman (saniye)'); % x etiket ver
legend('f=2 Hz olan sin�s','f=4 Hz olan kosin�s') % lejant koy
grid on; % �ekli karelere b�l

% cizimi parcalara bolme
subplot(2,2,1); % �ekli 2x2'lik 4 alt �ekil olarak d���n, 1.yi se�
plot(t,s_1); % s_1'i �iz
title('2Hz sin�s dalgasi'); % Ba�l�k
ylabel('Genlik')
xlabel('Zaman');
subplot(2,2,2); % �ekli 2x2'lik 4 alt �ekil olarak d���n, 2.yi se�
plot(t,s_2); % s_2'yi �iz
title('4Hz kosin�s dalgasi'); % Ba�l�k
ylabel('Genlik'); % y eksenini isimlendir
xlabel('Zaman'); % x eksenini isimlendir
subplot(2,2,3); % �ekli 2x2'lik 4 alt �ekil olarak d���n, 3.y� se�
plot(t,s_1+s_2); % s_1+s_2'yi �iz
title('Toplam sinyal'); % Ba�l�k
ylabel('Genlik'); % y eksenini isimlendir
xlabel('Zaman'); % x eksenini isimlendir
subplot(2,2,4); % �ekli 2x2'lik 4 alt �ekil olarak d���n, 4.y� se�
plot(t,s_1.*s_2); % s_1*s_2'yi �iz
title('�arp�m sinyal'); % Ba�l�k

%% Uc boyulut fonksiyonlar ve cizimler
x = linspace(-1,1,30); %-1'den 1'e e�it aral�kl� 30 elemanl� vekt�r olu�tur
y = linspace(-1,1,30); %-1'den 1'e e�it aral�kl� 30 elemanl� vekt�r olu�tur
[xg,yg] = meshgrid(x,y); % 3B �izim i�in 30x30'luk bir �rg� olu�tur
zg = xg.^2 + yg.^2; % �izdirilecek fonksiyonu �rg� �zerinde hesapla
figure; % Yeni bir �ekil a�
contour(xg,yg,zg); % Fonksiyonu e�y�lselti haritas� format�nda �iz
ylabel('Genlik'); % y eksenini isimlendir

figure; % Yeni bir �ekil a�
contourf(xg,yg,zg); % Fonksiyonu i�i dolu e�y�lselti haritas� format�nda�iz

figure; % Yeni bir �ekil a�
mesh(xg,yg,zg); % Fonksiyonu i�i �iz

figure; % Yeni bir �ekil a�
surf(xg,yg,zg); % Fonksiyonu i�i dolu olarak �iz
colorbar; % �ekle, renklerin temsil etti�i de�erleri g�steren �ubuk ekle
title('3B bir �izim'); % Ba�l�k koy

xlabel('x de�eri'); % x eksenine etiket koy
ylabel('y de�eri'); % y eksenine etiket koy
zlabel('z de�eri'); % z eksenine etiket koy

%% Karar Komutlari
% if
x = 7;
if x>0
disp('x pozitiftir.') % E�er x>0 ise bunu yapar
elseif x==0
disp('x s�f�r�d�r.') % E�er x>0 de�ilse ama x==0 ise bunu yapar
else
disp('x negatiftir.') % E�er x>0 de�ilse ve x==0 de�ilse bunu yapar
end

% for
for i=1:10
i*2
end

% while
toplam=0;
while toplam < 1000
toplam = toplam + 100; % toplam 1000'den k���k oldu�u s�rece bunu yapar
end
toplam