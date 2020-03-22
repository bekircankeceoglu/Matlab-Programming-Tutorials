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
diag(A) % Matrisin köþegeni
inv(A) % Matrisin tersi
A^-1 % Matrisin tersi
A' % Matrisin transpozesi
[V,D]=eig(A) % Matrisin özdeðerleri ve özvektörleri
det(A) % Matrisin determinantý
rank(A) % Matrisin ranký

%% Þekil Cizdirme
t = 0:0.1:10 % 0'dan 10'abirer birer artan zaman vektörü
s = sin(t); % t'nin sinüsünü al
plot(t,s); % s'yi t'ye karþý çizdir
plot(t,s,'k*'); % Renk ve çizdirme biçimleri deðiþtirilebilir. (bkz. doc
close; % Açýk olan þekli kapat

% script acilir
t = 0:0.01:1; % 0'dan 1'e kadar 0.01'lik adýmlarla artan zaman vektörü
A = 8;
f_1 = 2;
s_1 = A*sin(2*pi*f_1*t); % Genliði 8, frekansý 2 Hz olan sinüs
f_2 = 4;
s_2 = A*cos(2*pi*f_2*t); % Genliði 8, frekansý 4 Hz olan kosinüs
plot(t,s_1); % s_1'i çizer
plot(t,s_2); % Açýk þekli silip üzerine s_2'yi çizer

% ayri cizdirme
plot(t,s_1); % s_1'i çizer
figure; % Yeni bir þekil açar
plot(t,s_2); % s_2'yi yeni þekle çizer

% üst üste cizdirme
plot(t,s_1); % Birinci þekli çizdir
hold on; % Þekli tut
plot(t,s_2); % Ýkinci þekli çizdir
hold off; % Þekli býrak

title('Ýki güzel fonksiyon'); % Þekle baþlýk koy
ylabel('Genlik'); % y eksenine etiket ver
xlabel('Zaman (saniye)'); % x etiket ver
legend('f=2 Hz olan sinüs','f=4 Hz olan kosinüs') % lejant koy
grid on; % Þekli karelere böl

% cizimi parcalara bolme
subplot(2,2,1); % Þekli 2x2'lik 4 alt þekil olarak düþün, 1.yi seç
plot(t,s_1); % s_1'i çiz
title('2Hz sinüs dalgasi'); % Baþlýk
ylabel('Genlik')
xlabel('Zaman');
subplot(2,2,2); % Þekli 2x2'lik 4 alt þekil olarak düþün, 2.yi seç
plot(t,s_2); % s_2'yi çiz
title('4Hz kosinüs dalgasi'); % Baþlýk
ylabel('Genlik'); % y eksenini isimlendir
xlabel('Zaman'); % x eksenini isimlendir
subplot(2,2,3); % Þekli 2x2'lik 4 alt þekil olarak düþün, 3.yü seç
plot(t,s_1+s_2); % s_1+s_2'yi çiz
title('Toplam sinyal'); % Baþlýk
ylabel('Genlik'); % y eksenini isimlendir
xlabel('Zaman'); % x eksenini isimlendir
subplot(2,2,4); % Þekli 2x2'lik 4 alt þekil olarak düþün, 4.yü seç
plot(t,s_1.*s_2); % s_1*s_2'yi çiz
title('Çarpým sinyal'); % Baþlýk

%% Uc boyulut fonksiyonlar ve cizimler
x = linspace(-1,1,30); %-1'den 1'e eþit aralýklý 30 elemanlý vektör oluþtur
y = linspace(-1,1,30); %-1'den 1'e eþit aralýklý 30 elemanlý vektör oluþtur
[xg,yg] = meshgrid(x,y); % 3B çizim için 30x30'luk bir örgü oluþtur
zg = xg.^2 + yg.^2; % Çizdirilecek fonksiyonu örgü üzerinde hesapla
figure; % Yeni bir þekil aç
contour(xg,yg,zg); % Fonksiyonu eþyülselti haritasý formatýnda çiz
ylabel('Genlik'); % y eksenini isimlendir

figure; % Yeni bir þekil aç
contourf(xg,yg,zg); % Fonksiyonu içi dolu eþyülselti haritasý formatýndaçiz

figure; % Yeni bir þekil aç
mesh(xg,yg,zg); % Fonksiyonu içi çiz

figure; % Yeni bir þekil aç
surf(xg,yg,zg); % Fonksiyonu içi dolu olarak çiz
colorbar; % Þekle, renklerin temsil ettiði deðerleri gösteren çubuk ekle
title('3B bir çizim'); % Baþlýk koy

xlabel('x deðeri'); % x eksenine etiket koy
ylabel('y deðeri'); % y eksenine etiket koy
zlabel('z deðeri'); % z eksenine etiket koy

%% Karar Komutlari
% if
x = 7;
if x>0
disp('x pozitiftir.') % Eðer x>0 ise bunu yapar
elseif x==0
disp('x sýfýrýdýr.') % Eðer x>0 deðilse ama x==0 ise bunu yapar
else
disp('x negatiftir.') % Eðer x>0 deðilse ve x==0 deðilse bunu yapar
end

% for
for i=1:10
i*2
end

% while
toplam=0;
while toplam < 1000
toplam = toplam + 100; % toplam 1000'den küçük olduðu sürece bunu yapar
end
toplam