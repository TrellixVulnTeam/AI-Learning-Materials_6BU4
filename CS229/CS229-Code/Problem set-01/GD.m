function  [theta, J] = GD(x, y, alpha, max_iters)
%GD �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
    m = size(x, 1); % sample num
    n = size(x, 2); % feature size
    theta = zeros(n, 1);
    J = zeros(max_iters, 1);
    for ti = 1 : max_iters        
        z = x * theta.*y;
        g = 1./(1+exp(-z));
        J(ti) = 1 / m * sum( log(1 + exp(-z)) );      
        theta = theta - alpha * (1/m) *  x' * ((g-1) .*y);         
    end

end

