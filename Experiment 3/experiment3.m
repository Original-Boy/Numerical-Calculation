f0 = @(x,y) 2.*x ./(3.*y.*y);
disp('欧拉方法:')
disp(1+0.1*f0(0,1))
disp('改进的欧拉方法:')
disp(MendEuler(f0,0,1,10,1))
disp('四阶龙格-库塔方法:')
disp(Rungkuta4(f0,0,1,10,1))
disp('四阶亚当姆斯预估校正系统:')
disp(Adams4PC(f0,0,1,10,1))
disp('改进的四阶亚当姆斯预估校正系统:')
disp(CAdams4PC(f0,0,1,10,1))
