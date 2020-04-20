var w = 30, W = 320,
    h = 60, H = 140;

var back = "#f8f8f6",
    shape= "#f5f5f7",
    rank = "#2bb33b", arg  = "#002a05",
    arr  = "#6f9991",
    frame= "#67542a",
    cell = "#5c7fa1", link = "#688fb5";

var tr = d3.selectAll("li").data([0,1,2]).append("table").attr("class","center").append("tr"),
    g = tr.append("td").append("svg").attrs({height:H,width:W+560})
          .append("g").attr("transform","translate(130,0)")
          .attrs({"font-size":50, "font-family":"monospace"}),
    c = tr.append("td")
          .append("pre").attr("class","apl")
          .html(i => "<tspan class='Identifier'>f</tspan>"
                   + "<tspan class='Operator'>⍤</tspan>"
                   + "<tspan class='Constant'>"+(i==1?99:3)+" "+(i==2?99:2)+"</tspan>")
          .filter(i=>i==0).style("margin-left",w/2+"px");

g.append("rect").attrs({x:0, y:0, width:W, height:H, fill:back});
g.append("rect").attrs({x:W-6.2*w-2,y:9,width:6.2*w,height:H-18, fill:shape, stroke:rank, "stroke-width":4});

function getText(_,i) {
    var shc = "3 1 ",
        sha = "4 1 5",
        shb = "6 2";

    var s = [shc,shc],
        t = [sha,shb];
    if (i) s[i-1] = "    ";
    return [0,1].map(i=>
        "<tspan color='"+frame+"' xml:space='preserve'>"+s[i]+"</tspan>"
      + "<tspan color='"+cell+"'>"+t[i]+"</tspan>"
    );
}
var ty = (_,i)=>58+60*i;
g.selectAll().data(getText).enter()
    .append("text")
    .attrs({x:(W-9*w)/2, y:ty})
    .html(t=>t);
g.selectAll().data(["⍺","⍵"]).enter()
    .append("text")
    .attrs({x:(_,i)=>-26+16*i, y:ty, "text-anchor":"end"})
    .append("tspan").attr("class","Special").text(t=>t);

var ay = 49,
    ap = 130;
g.selectAll().data((_,i)=>d3.zip(i==1?[0,0,0]:[-1,0,1], i==2?[0,0,0]:[-1,0,1])).enter()
    .append("line")
    .attrs({x1:W+ap+4*8, x2:W+ap+100, y1:d=>H/2+ay*(d[0]+d[1]*0.05)/1.05,
                                      y2:d=>H/2+ay*(d[1]+d[0]*0.05)/1.05,
            stroke:link, "stroke-width":4, "stroke-linecap":"round"});
g.selectAll().data((_,i)=>[i==1?[0]:[-1,0,1], i==2?[0]:[-1,0,1]]).enter()
    .append("g").attr("transform",(_,j)=>"translate("+(W+ap+100*j)+",0)")
    .selectAll().data((d,j)=>d.map(i=>[i,j%2])).enter()
    .append("rect").attrs(function (ij) {
        var i=ij[0], j=ij[1],
            wh = [[4,5],[6,2]][j].map(d=>8*d), w=wh[0], h=wh[1];
        return {x:0, y:ay*i+(H-h)/2, width:w, height:h,
                fill:arr, stroke:arg, "stroke-width":2};
    });
