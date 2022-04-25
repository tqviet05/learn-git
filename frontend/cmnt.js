data = [];
    function inputComment(){
      var collection = getInput().value;
      if (collection =="") {return}
      data.push({text: collection, time: moment().format('hh:mm:ss a')});
      getInput().value ="";
      outPut();
    };
    
    function clearComment(){
      data = [];
      app = getOut();
      app.innerHTML='';
    };
    function btnDel(tt) {
      var index = tt.dataset.indexNumber;
      delete data[index];
      outPut();
    };
      
    function getInput() {return document.getElementById("jsInput")};
    function getOut() {return document.getElementById("jsOutput")};
    function outPut() {
      app = getOut();
      app.innerHTML='';
      data.forEach(function (value,index){
        let p = document.createElement('p');
        let span =  document.createElement('span');
        let btn1 = document.createElement('button');
        span.textContent= value.time;
        p.textContent= value.text;
        p.classList.add('d-flex');
        span.classList.add('ms-auto');        
        btn1.classList.add('btn');        
        btn1.classList.add('btn-close');
        btn1.classList.add('btn-danger');
        btn1.classList.add('btn-sm');
        btn1.setAttribute('type', 'button');
        btn1.setAttribute('data-index-number',index);    
        btn1.setAttribute('onClick','btnDel(this)');
        p.append(span);
        p.append(btn1);
        app.append(p);
      });
    }