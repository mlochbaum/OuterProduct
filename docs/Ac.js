var all = d3.select("svg"),
    mask= all.append("defs").append("mask").attr("id","mask");
    svg = all.append("g").attr("mask", "url(#mask)");
var L = 123,
    H = 158;

var cf = "#6d546a",
    cv = "#3c3c3c",
    cl = "#72436a",
    wl = 6;

svg.selectAll().data([
        [0,0.1 , 1,4],
        [2,0.1 , 1,3],
        [5,0.1 , 1,1],
        [7,0.1 ,-1,1],
        [6,1.55,-2,2],
        [4,2.55,-1,3],
        [3,3.55,-2,4],
        [-1.5,0.8,2.5,4]
    ]).enter().append("path")
    .attrs({fill:"none", stroke:cl, "stroke-width":wl})
    .attr("d", p => "M"+L*(2.4+p[0])+" "+(90+H*p[1])
                  + "q0 "+H*(p[3]-p[1])+" "+L*p[2]+" "+H*(p[3]-p[1]));

svg.append("g")
    .attr("transform","translate("+(0.9*L)+","+(80+H*0.8)+")rotate(-0.7)")
    .append("polygon")
    .attr("fill", cl)
    .attr("points", "0,0 -18,46 0,36 18,46");

var vals = [
        ["¯0.75",3,3],
        ["¯4"   ,4,2],
        [ "4"   ,6,1]
    ].map(d => ({t:d[0], x:L*(2.4+d[1]), y:170+H*d[2]}));
var val = svg.selectAll().data(vals).enter();
val.append("line")
    .attrs(d => ({x1:d.x, x2:d.x, y1:d.y-100, y2:d.y, "stroke-width":wl, stroke:cl}));
val.append("rect")
    .attrs(d => ({x:d.x-100, y:d.y-30, width:200, height:60, fill:"white"}));
val.append("text")
    .attrs(d => ({x:d.x-(d.t.charAt(0)=="¯"?8:1), y:22+d.y, "text-anchor":"middle",
                  "font-size":56, fill: cv}))
    .text(d=>d.t);

var fns = [
        ["+",1,4],
        ["÷",3,3],
        ["-",4,2],
        ["×",6,1]
    ].map(d => ({t:d[0], x:L*(2.4+d[1]), y:90+H*d[2]}));
var fn = svg.selectAll().data(fns).enter();
fn.append("circle")
    .attrs(d => ({cx:d.x, cy:d.y, r:34, fill:"white", stroke:cf, "stroke-width":2}));
fn.append("text")
    .attrs(d => ({x:d.x, y:22+d.y, "text-anchor":"middle",
                  "font-size":70, fill: cf}))
    .text(d=>d.t);

// [ [5,1], [3,2], [2,3], ([0,4],[-2,4])]
//  .attr("stroke", "white")
//  .attr("stroke-width", 120)
//  .attr("fill", "none")
//  .attr("d", d=>d);
function maskRect(x,w,y,h) {
    return mask.append("rect")
        .attrs({x:L*x,width:L*w,y:42+H*y,height:H*h,fill:"white"});
}
function rectUp(w,y0,h) {
    maskRect(2+w,9-w, y0,0)
        .transition().duration(1400).attr("height",H*h);
}
var li = 0;
document.onclick = function () {
    switch (li++) {
    case 0: rectUp(5,0,2); break;
    case 1: rectUp(3,1.8,1.2); break;
    case 2: rectUp(2,0,4); break;
    case 3: rectUp(0,0,5);
            maskRect(6,0,4,2).transition().delay(600).duration(600).attrs({x:0,width:L*6});
            maskRect(0,2,5,0).transition().delay(600).duration(1000).attrs({y:0,height:200+H*4});
            break;
    }
}
