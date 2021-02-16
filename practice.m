clear ; close all; clc

% x = [1; 2; 3;];
% Theta1 = magic(3);
% % disp(Theta1);
%
%
% a2 = zeros(3, 1);
% % disp(a2);
%
% % for i = 1:3
% %   for j = 1:3
% %     a2(i) = a2(i) + x(j) * Theta1(i, j);
% %   end
% %   % disp(a2(i));
% %   a2(i) = sigmoid(a2(i));
% % end
%
% a2 = sigmoid(Theta1 * x);
%
% disp(a2);

y = [1; 4; 6; 2];
unique_y = unique(y);
K = size(unique_y)(1);

Y = [];
for iter = 1:size(y)(1)
  row = zeros(1, K);
  % row(y(iter))
  index = find(unique_y == y(iter));
  row(index) = 1;
  Y = [Y ; row];
end

disp(Y);
