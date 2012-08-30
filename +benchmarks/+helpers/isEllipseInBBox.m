function sel = isEllipseInBBox(bbox, f)
% ISELLIPSEINBBOX Test whether ellipse is fully in a box.
%	SEL = isEllipseInBBox(BBOX, E) Tests whether ellipse E is in a 
%   box BBOX defined as:
%   
%        [xmin ymin xmax ymax]
%

  if isempty(f)
    sel = false;
    return;
  end

  % TODO wrong bbox calculation, see repeatability.m:219
  rx = sqrt(f(3,:)) ;
  ry = sqrt(f(5,:)) ;

  sel = bbox(1) < f(1,:) - rx & ...
        bbox(2) < f(2,:) - ry & ...
        bbox(3) > f(1,:) + rx & ...
        bbox(4) > f(2,:) + ry ;

end