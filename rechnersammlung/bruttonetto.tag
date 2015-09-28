<bruttonettorechner id="bruttonetto">
        <h1 class="text-center">{ opts.title }</h1>

        <form onsubmit ={ calc } class="form-horizontal" role="form" id="formbruttonetto">

          <div class="form-group">
              <label for="gehalt" class="control-label col-sm-4" >Gehalt / h</label>
               <div class="col-sm-8">
                  <input class="form-control" name="gehalt" id="gehalt" type = "number" value= "10" disabled={bruttoberechnung}>
               </div>
          </div>
          <div class="form-group">
              <label for="stunden" class="control-label col-sm-4" >Stunden / Monat</label>
               <div class="col-sm-8">
                  <input class="form-control" name="stunden" id="stunden" type = "number" value= "80" disabled={bruttoberechnung}>
               </div>
          </div>

          <div class="form-group">
              <label for="b" class="control-label col-sm-4" >Bruttoberechnung</label>
              <div class="col-sm-8">
                  <input checked={bruttoberechnung} name="b" class="checkbox" type="checkbox" onchange={switchChanged}>
              </div>
          </div>

        <div class="form-group">
            <label for="brutto" class="control-label col-sm-4" >Brutto</label>
             <div class="col-sm-8">
                <input class="form-control" name="brutto" id="brutto" type = "number" value= "800" readonly={!bruttoberechnung}>
             </div>
        </div>
        <div class="form-group">
            <label for="faktor" class="control-label col-sm-4" >Umrechnungsfaktor</label>
            <div class="col-sm-8">
                <select name="faktor" class="form-control" id="faktor">
                    <option value="0.9065">Student - 90,65%</option>
                    <option value="0.6362">Arbeiter - 63,62%</option>
                </select>
            </div>
        </div>
        <div class="form-group">
            <label for="faktor" class="control-label col-sm-4" >Zeitraum</label>
            <div class="col-sm-8">
                <select name="faktor2" class="form-control" id="faktor2">
                    <option value="monatlich">monatlich</option>
                    <option value="jaehrlich">Jaehrlich</option>
                </select>
            </div>
        </div>
        <button name="cButton"  type="submit" class="btn btn-default">Berechnen</button>
        <span style="padding-left:20px;" show={this.result != '' }><b>{ result }&#8364; {this.faktor2.value} und  { result2 } {einheit} </b></span>
        </form>

        <!--style-->
        <style>
        #bruttonetto{
            #border:thin solid black;
            #padding: 10px 10px 10px 10px;
            #border-radius: 15px;
        }
        </style>

        <!-- logic -->
        <script>



        this.result = ''
        this.bruttoberechnung = true


        switchChanged(e){
            this.bruttoberechnung = e.target.checked

            if(this.bruttoberechnung){
              opts.title = 'Brutto-Netto-Rechner'
            }else{
              opts.title = 'Gehalt-Netto-Rechner'
            }

        }

        calc(e) {

          if (!this.bruttoberechnung){
            this.brutto.value = this.gehalt.value * this.stunden.value
          }
            this.result = Math.round((this.brutto.value * this.faktor.value)*100)/100;

              if (this.faktor2.value == 'monatlich'){
                this.result2 = Math.round((this.result * 13) * 100) / 100;
                this.einheit = 'jaehrlich'
              }else{
                  this.result2 = Math.round((this.result / 13) * 100) / 100;
                this.einheit = 'monatlich';
              }





        }
        </script>

</bruttonettorechner>
