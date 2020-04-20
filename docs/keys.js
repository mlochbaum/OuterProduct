var cc = c => c.charCodeAt(0) - "a".charCodeAt(0);
var ch = n => String.fromCharCode("a".charCodeAt(0) + n);

var outline = [
    "NTT",
    ["A","k"],
    ["B","j"],
    ["C","m"],
    "INT",
    ["D","k"],
    ["E","h"],
    ["F","j"],
    ["G","h"]
].map(s => typeof s === "string" ? [s,1] : [s[0], cc(s[1])+2]);
var sections = outline.map(o=>o[0]);
var lens     = outline.map(o=>o[1]);

var sub = (dir, sec, t) => {
    var pp= t.length != 2,
        s = sections.indexOf(pp?t:t.slice(0,1)),
        r = s,
        p = pp ? 0 : t.charAt(1)==="q" ? lens[r]-1 : cc(t.charAt(1)),
        next = l => i => Math.min(l-1, Math.max(0, i+dir));
        nextSec = next(sections.length);
    if (sec) {
        do { r = nextSec(r); } while (lens[r]===1);
        p = 0;
    } else {
        var o=p; p=next(lens[r])(p);
        if (o===p) { r = nextSec(r); }
    }
    if (r!==s) { p = sec||dir===1 ? 0 : lens[r]-1; }
    var l = lens[r];
    return sections[r] + (l===1?"":p===l-1?"q":ch(p));
}

function move(dir, sec) {
    window.location.href = window.location.href
        .replace(/([^/]+)(\.html$)/, (_,t,suff) => sub(dir,sec,t)+suff);
}

document.onkeydown = function (e) {
    switch (e.keyCode) {
    case 37: case 65:  move(-1, 0); break;
    case 39: case 68:  move( 1, 0); break;
    case 81: case 188: move(-1, 1); break;
    case 69: case 190: move( 1, 1); break;

    case 40: case 83:  document.onclick(); break;

    case 38: case 87:  location.reload(); break;
    }
}
