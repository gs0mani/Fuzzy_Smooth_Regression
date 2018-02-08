x_data = -5:0.05:5;
x_data = x_data';
size_data = size(x_data,1);
%random_R_data = ones(size_data,1) * 0.125;
%random_R_data = 0.125 * rand(size_data,1);
random_R_data = [    0.0787
    0.0076
    0.0842
    0.0597
    0.0382
    0.0645
    0.0884
    0.1017
    0.0395
    0.0389
    0.0431
    0.0833
    0.1076
    0.0952
    0.1095
    0.1089
    0.0216
    0.1063
    0.1199
    0.0963
    0.1094
    0.0084
    0.0808
    0.0405
    0.0800
    0.1100
    0.0467
    0.0958
    0.0210
    0.0650
    0.0784
    0.0892
    0.0383
    0.0330
    0.1145
    0.0769
    0.0116
    0.0785
    0.0240
    0.0971
    0.1081
    0.0417
    0.0169
    0.0957
    0.0398
    0.0315
    0.0250
    0.0086
    0.0690
    0.0505
    0.0938
    0.0609
    0.0481
    0.0077
    0.0267
    0.0680
    0.0513
    0.1126
    0.0070
    0.0554
    0.0672
    0.0168
    0.0676
    0.1072
    0.0248
    0.0195
    0.0077
    0.0826
    0.0023
    0.0364
    0.1217
    0.0956
    0.0305
    0.0853
    0.0172
    0.0787
    0.1071
    0.1125
    0.0435
    0.0608
    0.0849
    0.0880
    0.0576
    0.0455
    0.0350
    0.0095
    0.0556
    0.0207
    0.0498
    0.1151
    0.0639
    0.1143
    0.0115
    0.1241
    0.0121
    0.0391
    0.0982
    0.0753
    0.0582
    0.0373
    0.0166
    0.0369
    0.0208
    0.0396
    0.0137
    0.1040
    0.1214
    0.0273
    0.0883
    0.0049
    0.0770
    0.0837
    0.0047
    0.0004
    0.0178
    0.1078
    0.0345
    0.0665
    0.0653
    0.0710
    0.0416
    0.0517
    0.0518
    0.1230
    0.0072
    0.0496
    0.0989
    0.0743
    0.0387
    0.1127
    0.0116
    0.0399
    0.1109
    0.0822
    0.0856
    0.0592
    0.0177
    0.1189
    0.1103
    0.0547
    0.1044
    0.0406
    0.0460
    0.0994
    0.0124
    0.1190
    0.0002
    0.0369
    0.0061
    0.0553
    0.0987
    0.1142
    0.0667
    0.1005
    0.0703
    0.0939
    0.0012
    0.0596
    0.0313
    0.0385
    0.1209
    0.0261
    0.0651
    0.0282
    0.0709
    0.1248
    0.0165
    0.1193
    0.0155
    0.0233
    0.0808
    0.0160
    0.0102
    0.0824
    0.0034
    0.1231
    0.0674
    0.0467
    0.0883
    0.1184
    0.0478
    0.0866
    0.0753
    0.0969
    0.0740
    0.0470
    0.1063
    0.0282
    0.0996
    0.1246
    0.0352
    0.0888
    0.0831
    0.0519
    0.0623
    0.1186
    0.1191
    0.0916
    0.0481
    0.0050
    0.0729];
%disp(size(random_R_data,1));
%random_R_data = [0.02 0.05 0.04 0.035 0.05 0.035...
 %   0.06 0.13 0.075 0.08 0.075 0.055 0.1 0.105 0.08...
  %  0.115 0.1 0.24 0.16];
%random_R_data = random_R_data';
x_test_data = -5:0.5:5;
%x_test_data = x_data;
x_test_data = x_test_data';
%size_test_data = size(x_test_data,1);
%random_R_test = random_R_data;
%random_R_test = 0.125 * rand(size_test_data,1);
random_R_test = [    0.0706
    0.0444
    0.1100
    0.0781
    0.0780
    0.0370
    0.0093
    0.0367
    0.0293
    0.0432
    0.1061
    0.0200
    0.0197
    0.0636
    0.0754
    0.0202
    0.0794
    0.1055
    0.0978
    0.0331
    0.0393];
%random_R_test = ones(size_test_data,1) * 0.125;
%disp([x_data, random_R_data]);
%disp(random_R_data);
%disp(random_R_test);
avg = mean(x_data);
stdev = std(x_data);
%y_data = normpdf(x_data,avg,stdev);
%disp(y_data)
y_data = x_data.^2.*3./100;
y_test_data = x_test_data.^2.*3./100;
disp([x_test_data, y_test_data, random_R_test]);
%disp(size(y_data,1));
%y_data = x_data.*0.8;
%pd = makedist('Poisson' , 0.5);
%normy_data = exppdf(r, 2);
%y_data = [0.29 0.24 0.24 0.28 0.28 0.235 0.23 0.33 0.275...
 %   0.3 0.335 0.275 0.4 0.455 0.420 0.485 0.5 0.65...
  %  0.64];
%y_data = y_data';
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
%{
% for r = grey_levels:-1:1
%     for angle = 1:points_at_r
%         xx = x_data+(radius(r)*cosd(theta(angle)));
%         sr_xx = x_test_data+(radius(r)*cosd(theta(angle)));
%         yy =  y_data + (radius(r)*sind(theta(angle)));
%         %xx = x_data;
%         %sr_xx = x_test_data;
%         %yy =  y_data + (radius(r)*sind(theta(angle))/2);
%         delta = 10;
%         mx_estimated = zeros(1,size_test_data);
%         for i=1:size_test_data
%             den_sum = 0;
%             num_sum = 0;
%             cnt_p = 0;
%             for j=1:size_data
%                 if abs(sr_xx(i)-xx(j))<= 1/delta
%                     %del_value = delta * (1 - delta *(abs(r(i) - r_og(j))));
%                     del_value = 0.75*(1 - (abs(sr_xx(i) - xx(j)) ^2));
%                     cnt_p = cnt_p + 1;
%                     den_sum = den_sum + del_value;
%                     num_sum = num_sum + yy(j)*del_value;
%                 end
%             end
%             %disp(cnt_p)
%             mx_estimated(i) = num_sum/den_sum;
%         end
%         mx_estimated = mx_estimated';
%         %disp(mx_estimated)
%         %mx_estimated = cell2mat(mx_estimated);
%         hold on;
%         %{
%         tt = 2;
%         if r <= 10
%             tt = 1;
%         end
%         %}
%         plot(sr_xx,mx_estimated,'color', [0,0,0]+radius(r)/0.125)
%         cnt = cnt+1;
%         %disp(cnt);
%     end
%end
%}