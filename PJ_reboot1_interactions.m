% Generate interaction terms for SPM contrasts:
task = [repmat(1,1,172) repmat(2,1,172)]; diff = [repmat(1,1,86) repmat(2,1,86) repmat(1,1,86) repmat(2,1,86)];

TbD = task.*diff;
GFbD = repmat(GF,4,1).*transpose(diff);
GFbT = repmat(GF,4,1).*transpose(task);
GFbTbD = repmat(GF,4,1).*transpose(task).*transpose(diff);
