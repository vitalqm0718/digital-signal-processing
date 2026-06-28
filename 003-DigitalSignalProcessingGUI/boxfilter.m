function imDst = boxfilter(imSrc,r)

[hei,wid] = size(imSrc);

imDst = zeros(size(imSrc)); %初始化

%--------------------------------------------------------------------------

imCum = cumsum(imSrc,1); %y轴累计求和，将每一行的数值一次累加到下一行

%y轴方向差异

imDst(1:r+1,:) = imCum(1+r:2*r+1,:);

%将imCum中的1+r到2*r+1行数据复制到imDst函数中的1到r+1行

imDst(r+2:hei-r,:) = imCum(2*r+2:hei,:)-imCum(1:hei-2*r-1,:);

%将imCum中的2*r+2到hei行数据依次减去1到hei-2*r-1行的值

%把最终结果存放到函数imDst的r+2到hei-r行

imDst(hei-r+1:hei,:) = repmat(imCum(hei,:),[r,1])-imCum(hei-2*r:hei-r-1,:);

%使用repmat函数将imCum变为r*1的格式

%然后减去函数imCum中从hei-2*r到hei-r-1行的数值

%得到的结果放入imDst的hei-r+1到hei行位置

%--------------------------------------------------------------------------

imCum = cumsum(imDst,2); %x轴累计求和，将每一列的数值一次累加到下一列

%y轴方向差异

imDst(:, 1:r+1) = imCum(:,1+r:2*r+1);

%将imCum中的1+r到2*r+1列数据复制到imDst函数中的1到r+1列

imDst(:, r+2:wid-r) = imCum(:,2*r+2:wid)-imCum(:,1:wid-2*r-1);

%将imCum中的2*r+2到hei列数据依次减去1到hei-2*r-1列的值

%把最终结果存放到函数imDst的r+2到hei-r列

imDst(:, wid-r+1:wid) = repmat(imCum(:,wid),[1,r])-imCum(:,wid-2*r:wid-r-1);

%使用repmat函数将imCum变为r*1的格式

%然后减去函数imCum中从hei-2*r到hei-r-1列的数值

%得到的结果放入imDst的hei-r+1到hei列位置

end
