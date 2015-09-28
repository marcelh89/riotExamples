<kostenanteilsrechner id="kosten">
        <h1 class="text-center">{ opts.title }</h1>

        <form onsubmit ={ calc } class="form-horizontal" role="form" id="formbruttonetto">
        <div class="form-group">
            <label for="brutto1" class="control-label col-sm-4" >Einkommen Person1</label>
             <div class="col-sm-8">
                <input class="form-control" name="brutto1" id="brutto1" type = "number" value= "3000">
             </div>
        </div>
        <div class="form-group">
            <label for="brutto2" class="control-label col-sm-4" >Einkommen Person2</label>
             <div class="col-sm-8">
                <input class="form-control" name="brutto2" id="brutto2" type = "number" value= "1400">
             </div>
        </div>
        <div class="form-group">
            <label for="kosten" class="control-label col-sm-4" >Kosten</label>
             <div class="col-sm-8">
                <input class="form-control" name="kosten" id="kosten" type = "number" value= "461">
             </div>
        </div>

        <button name="cButton"  type="submit" class="btn btn-default">Berechnen</button>
        <span style="padding-left:20px;" show={this.result != '' }><b>Person1: { result }&#8364; und  Person2: { result2 } &#8364; </b></span>
        </form>


        <!-- logic -->
        <script>
        this.result = ''

        calc(e) {

          var brutto2 = parseFloat(this.brutto2.value)
          var brutto1 = parseFloat(this.brutto1.value)
          var brutto12 = brutto1 + brutto2
          var anteil1 = brutto1/brutto12
          var anteil2 = brutto2/brutto12

          var kosten = parseFloat(this.kosten.value)
          var G, W

          var check = ( parseInt(brutto1) +parseInt(brutto2) ) < kosten

          //console.log((brutto1 + brutto2) < kosten)
          if (check){
            alert('Die Kosten duerfen nicht hoeher als die Gesamteinnahmen sein!')

          //check  brutto1 und brutto2 is >= kosten
          }else if (brutto1 == brutto2) {

            this.result = kosten / 2;
            this.result2 = kosten / 2;

            //brutto1 > brutto2 
            //brutto2 > brutto1
          }else{

            this.result = kosten * anteil1
            this.result2 = kosten * anteil2
          }

        //RUNDEN
        this.result = Math.round(this.result * 100) / 100
        this.result2 = Math.round(this.result2 * 100) / 100

        }
        </script>



</kostenanteilsrechner>
