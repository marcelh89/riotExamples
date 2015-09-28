<dragdrop id="dragdrop">

        <h1 class="text-center">{ opts.title }</h1>

            <div class="row">
                <ablage class="col-md-6"></ablage>
                <document class="col-md-6"></document>
            </div>

</dragdrop>


<ablage>
    <h2>Ablage</h2>
    <hr>

      <!-- List with handle -->
      <div name="listWithHandle" id="listWithHandle" class="list-group">
        <div id="list-group-item3" class="list-group-item">
          <a href="#"><span class="glyphicon glyphicon-arrow-right pull-right" aria-hidden="true" onclick={slip}></span></a>
          <span class="glyphicon glyphicon-move" aria-hidden="true"></span>
          Aufgabe1
        </div>
          <div id="list-group-item3" class="list-group-item">
            <a href="#"><span class="glyphicon glyphicon-arrow-right pull-right" aria-hidden="true" onclick={slip}></span></a>
            <span class="glyphicon glyphicon-move" aria-hidden="true"></span>
            Aufgabe2
          </div>
          <div id="list-group-item3" class="list-group-item">
            <a href="#"><span class="glyphicon glyphicon-arrow-right pull-right" aria-hidden="true" onclick={slip}></span></a>
            <span class="glyphicon glyphicon-move" aria-hidden="true"></span>
            Aufgabe3
          </div>
        </div>

    <button name="cButton" onclick={add}  type="button" class="btn btn-default">Hinzufuegen</button>



    <script>
    slip(e){
      console.log('slip')
      console.log(e.target)
    }



    add(e) {
      console.log(e)
      var list = document.getElementById('listWithHandle2')

      var divElement = document.createElement('div')
      divElement.className = "list-group-item"

      var span = document.createElement('span')
      span.className = "glyphicon glyphicon-move"
      span.setAttribute('aria-hidden', 'true')
      divElement.appendChild(span)

      var content = document.createTextNode('Aufgabe');
      divElement.appendChild(content)
      list.appendChild(divElement)

    }

    // List with handle
    Sortable.create(this.listWithHandle, {
    handle: '.glyphicon-move',
    animation: 150
    });
    </script>


</ablage>

<document>
    <h2>Dokument</h2>

    <hr>

    <div id="document" class="text-center">
        <h3>Meine Ueberschrift</h3>
        <h3>Aufgaben</h3>

        <div name="listWithHandle2" id="listWithHandle2" class="list-group">
          <div class="list-group-item">
          <span class="badge">14</span>
          <span class="glyphicon glyphicon-move" aria-hidden="true"></span>
          Aufgabe1
          </div>
        </div>

    </div>

    <style>
        #inhalt{
            background-color:#ccc;
            height:300px;
        }

        #inhalt > p{
            border:thin solid black;
        }
    </style>

    <script>
    // List with handle
      Sortable.create(this.listWithHandle2, {
      handle: '.glyphicon-move',
      animation: 150
      });
    </script>

</document>
