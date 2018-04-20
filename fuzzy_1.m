x_data = -5:0.05:5;
x_data = x_data';
size_data = size(x_data,1);
%random_R_data = ones(size_data,1) * 0.125;
random_R_data = 0.125 * rand(size_data,1);
%disp(size(random_R_data,1));
%random_R_data = random_R_data';

x_test_data = -5:0.5:5;
x_test_data = x_test_data';
%size_test_data = size(x_test_data,1);
%random_R_test = random_R_data;
random_R_test = 0.125 * rand(size_test_data,1);
%random_R_test = ones(size_test_data,1) * 0.125;
%disp([x_data, random_R_data]);
%disp(random_R_data);
%disp(random_R_test);

avg = mean(x_data);
stdev = std(x_data);

%y_data = normpdf(x_data,avg,stdev);
y_data = x_data.^2.*3./100;
y_test_data = x_test_data.^2.*3./100;
disp([x_test_data, y_test_data, random_R_test]);
%disp(size(y_data,1));
%y_data = x_data.*0.8;
%pd = makedist('Poisson' , 0.5);
%normy_data = exppdf(r, 2);

disp(size(y_data,1));
alpha_cuts = 0:0.01:1;
alpha_cuts = alpha_cuts';
size_alpha = size(alpha_cuts,1);
theta = 10:10:360;
theta = theta';
same_points = size(theta,1);

delta = 2;
%disp(theta);
cnt_it = 0;

for alpha = 1:size_alpha
    r_alpha_test = random_R_test .* (1 - alpha_cuts(alpha));
    r_alpha_data = random_R_data .* (1 - alpha_cuts(alpha));
    %disp([r_alpha_test, random_R_test]);
    %disp([r_alpha_data, random_R_data]);
    for angle = 1:same_points
        xx_test = x_test_data + (r_alpha_test .* cosd(theta(angle)));
        xx_data = x_data      + (r_alpha_data .* cosd(theta(angle)));
        yy_data = y_data      + (r_alpha_data .* sind(theta(angle)));
        mx_estimated = zeros(1,size_test_data);
        
        for i=1:size_test_data
            den_sum = 0;
            num_sum = 0;
            for j=1:size_data
                if abs(xx_test(i)-xx_data(j)) <= 1/delta
                    del_value = delta * (1 - delta *(abs(xx_test(i) - xx_data(j))));
                    cnt_it = cnt_it + 1;
                    %del_value = 0.75*(1 - (abs(xx_test(i) - xx_data(j)) ^2));
                    den_sum = den_sum + del_value;
                    num_sum = num_sum + yy_data(j)*del_value;
                end
            end
            %disp(cnt_p)
            mx_estimated(i) = num_sum/den_sum;
        end
        mx_estimated = mx_estimated';
        if (alpha_cuts(alpha) ==1 || alpha_cuts(alpha)==0) & rem(theta(angle),90)==0
            disp([alpha_cuts(alpha), theta(angle)]);
            disp([xx_test, mx_estimated]);
        end
        %mx_estimated = cell2mat(mx_estimated);
        hold on;
        %{
        tt = 2;
        if r <= 10
            tt = 1;
        end
        %}
        plot(xx_test,mx_estimated,'color', [0,0,0]+(1-alpha_cuts(alpha)))
    end
end
