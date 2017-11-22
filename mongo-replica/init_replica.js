config = { _id: "rs1", members:[
          { _id : 0, host : "Dmytros-Mac-13.lan:27011"},
          { _id : 1, host : "Dmytros-Mac-13.lan:27012"},
          { _id : 2, host : "Dmytros-Mac-13.lan:27013"} ]
};

rs.initiate(config);
rs.status();



