var L = 96;
var off = [
    [0,0], [1,0], [2,0], [3,0], [4,0], [5,0], [6,0], [7,0],
           [1,1],        [3,1],        [5,1],        [7,1],
                  [2,2], [3,2],               [6,2], [7,2],
                         [3,3],                      [7,3],
                                [4,4], [5,4], [6,4], [7,4],
                                       [5,5],        [7,5],
                                              [6,6], [7,6],
                                                     [7,7]
];
var points = off.map(s =>
    [[0,0],[1,0],[1,1]].map(o => (8+L*(s[0]+o[0]))+" "+(74+L*(s[1]+o[1]))).join(",")
);
document.onclick = function() {
    d3.select("svg").selectAll().data(points).enter()
        .append("polygon")
        .attr("fill", "#49ccb0")
        .attr("points", p=>p)
        .style("opacity",0)
        .transition().duration(400).style("opacity",1);
}
