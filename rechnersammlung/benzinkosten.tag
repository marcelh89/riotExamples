<benzinkostenrechner id="benzin">
        <h1 class="text-center">{ opts.title }</h1>

        <form onsubmit ={ calc } class="form-horizontal" role="form" id="formbenzin">
            <div class="form-group">
                 <label for="km" class="control-label col-sm-4" >Gefahrene Kilometer</label>
                 <div class="col-sm-8">
                    <input class="form-control" name="km" id="km" type = "number" value= "80">
                 </div>
            </div>
            <div class="form-group">
                <label for="bk" class="control-label col-sm-4" >Benzinkosten / L in &#8364;</label>
                <div class="col-sm-8">
                    <input class="form-control" name="bk" id="bk" type = "number" step="any" min="0" max="5" value="1.30">
                </div>
            </div>
            <div class="form-group">
                <label for="v" class="control-label col-sm-4" >Verbrauch auf 100 Liter</label>
                <div class="col-sm-8">
                    <input class="form-control" name="v" id="v" type = "number" value="7.0">
                </div>
            </div>
            <div class="form-group">
                <label for="b" class="control-label col-sm-4" >Hin- und Rueckweg</label>
                <div class="col-sm-8">
                    <input name="b" class="checkbox" type="checkbox">
                </div>
            </div>
                <button name="cButton" type="submit" class="btn btn-default">Berechnen</button>
                <span style="padding-left:20px;" show={this.result != '' }><b>{ result } &#8364;</b></span>
        </form>

        <!--style-->
        <style>
            #benzin{
                #border:thin solid black;
                #padding: 10px 10px 10px 10px;
                #border-radius: 15px;
            }
        </style>

        <!-- logic -->
        <script>
            this.result = ''

            // wird nicht aktualisiert, nur initial geladen!
            km =  this.km.value
            bk = this.bk.value
            v = this.v.value
            button = this.cButton.value

            calc(e) {
                this.result = Math.round((this.km.value * (this.b.checked ?  2 : 1 ) * this.v.value / 100 * this.bk.value)*100)/100
            }

        </script>

</benzinkostenrechner>

