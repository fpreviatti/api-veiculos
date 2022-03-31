<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gestão de veículos</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>

<body>

    <div class="container-fluid">
        <div class="jumbotron mt-5">
            <h1>API DE VEÍCULOS</h1>
        </div>
                <form action="/veiculos" method="POST">

                    <div class="form-group">
                        <label for="nome">Veiculo:</label>
                        <input
                                name="nome"
                                type="text"
                                placeholder="Informe o veículo"
                                id="nome">
                    </div>

                    <div class="form-group">
                        <label for="descricao">Descrição:</label>
                        <input

                                name="descricao"
                                type="text"
                                placeholder="Informe a descrição do veículo"
                                id="descricao">
                    </div>

                    <div class="form-group">
                        <label for="cor">Cor:</label>
                        <input

                                name="cor"
                                type="text"
                                placeholder="Informe a cor do veículo"
                                id="cor">
                    </div>

                    <div class="form-group">
                        <label for="marca">Marca:</label>

                        <select id="marca" name="marca" class="custom-select col-md-2">

                            <option value="Acura                 ">Acura                 </option>
                            <option value="Agrale                ">Agrale                </option>
                            <option value="Alfa Romeo            ">Alfa Romeo            </option>
                            <option value="Asia                  ">Asia                  </option>
                            <option value="AM General            ">AM General            </option>
                            <option value="Aston Martin          ">Aston Martin          </option>
                            <option value="Audi                  ">Audi                  </option>
                            <option value="Adly                  ">Adly                  </option>
                            <option value="Aprilia               ">Aprilia               </option>
                            <option value="Atala                 ">Atala                 </option>
                            <option value="Amazonas              ">Amazonas              </option>
                            <option value="Austin                ">Austin                </option>
                            <option value="Apperson              ">Apperson              </option>
                            <option value="Ashok Leyland         ">Ashok Leyland         </option>
                            <option value="Leyland               ">Leyland               </option>
                            <option value="Alpina                ">Alpina                </option>
                            <option value="Adler                 ">Adler                 </option>
                            <option value="Ascari                ">Ascari                </option>
                            <option value="Abarth                ">Abarth                </option>
                            <option value="Autobianchi           ">Autobianchi           </option>
                            <option value="Aixam                 ">Aixam                 </option>
                            <option value="AMG                   ">AMG                   </option>
                            <option value="AZLK                  ">AZLK                  </option>
                            <option value="Avtokam               ">Avtokam               </option>
                            <option value="ACMAT                 ">ACMAT                 </option>
                            <option value="Albion                ">Albion                </option>
                            <option value="Argyle                ">Argyle                </option>
                            <option value="Askam                 ">Askam                 </option>
                            <option value="Aspark Owl            ">Aspark Owl            </option>
                            <option value="A.D. Tramontana       ">A.D. Tramontana       </option>
                            <option value="BMW                   ">BMW                   </option>
                            <option value="Buggy                 ">Buggy                 </option>
                            <option value="BRM                   ">BRM                   </option>
                            <option value="Bugre                 ">Bugre                 </option>
                            <option value="Bugatti               ">Bugatti               </option>
                            <option value="Bentley               ">Bentley               </option>
                            <option value="Buick                 ">Buick                 </option>
                            <option value="Baker                 ">Baker                 </option>
                            <option value="Biddle                ">Biddle                </option>
                            <option value="Bajaj                 ">Bajaj                 </option>
                            <option value="Bitter                ">Bitter                </option>
                            <option value="Borgward              ">Borgward              </option>
                            <option value="Briggs                ">Briggs                </option>
                            <option value="Belsize               ">Belsize               </option>
                            <option value="Bertone               ">Bertone               </option>
                            <option value="Bianchi               ">Bianchi               </option>
                            <option value="Brilliance            ">Brilliance            </option>
                            <option value="Byd Auto              ">Byd Auto              </option>
                            <option value="Baic                  ">Baic                  </option>
                            <option value="Birrana               ">Birrana               </option>
                            <option value="Brabus                ">Brabus                </option>
                            <option value="Birkin                ">Birkin                </option>
                            <option value="Bailey                ">Bailey                </option>
                            <option value="Chevrolet             ">Chevrolet             </option>
                            <option value="Cadillac              ">Cadillac              </option>
                            <option value="CBT                   ">CBT                   </option>
                            <option value="Chana                 ">Chana                 </option>
                            <option value="Changan               ">Changan               </option>
                            <option value="Chery                 ">Chery                 </option>
                            <option value="Chrysler              ">Chrysler              </option>
                            <option value="Citroen               ">Citroen               </option>
                            <option value="Cross Lander          ">Cross Lander          </option>
                            <option value="Chinkara              ">Chinkara              </option>
                            <option value="Caterham              ">Caterham              </option>
                            <option value="Chater-Lea            ">Chater-Lea            </option>
                            <option value="Covini                ">Covini                </option>
                            <option value="Caresto               ">Caresto               </option>
                            <option value="Changhe               ">Changhe               </option>
                            <option value="Cizeta                ">Cizeta                </option>
                            <option value="Daewoo                ">Daewoo                </option>
                            <option value="Daihatsu              ">Daihatsu              </option>
                            <option value="Dodge                 ">Dodge                 </option>
                            <option value="De Tomaso             ">De Tomaso             </option>
                            <option value="Ducati                ">Ducati                </option>
                            <option value="Delorean              ">Delorean              </option>
                            <option value="DKW                   ">DKW                   </option>
                            <option value="DR Motor              ">DR Motor              </option>
                            <option value="De La Chapelle        ">De La Chapelle        </option>
                            <option value="Dongfeng              ">Dongfeng              </option>
                            <option value="DRB                   ">DRB                   </option>
                            <option value="Derways               ">Derways               </option>
                            <option value="Dragon Motors         ">Dragon Motors         </option>
                            <option value="Daimler               ">Daimler               </option>
                            <option value="Datsun                ">Datsun                </option>
                            <option value="Dacia                 ">Dacia                 </option>
                            <option value="DoniRosset            ">DoniRosset            </option>
                            <option value="Effa                  ">Effa                  </option>
                            <option value="Engesa                ">Engesa                </option>
                            <option value="Envemo                ">Envemo                </option>
                            <option value="Eicher                ">Eicher                </option>
                            <option value="Esther                ">Esther                </option>
                            <option value="Elfin                 ">Elfin                 </option>
                            <option value="Eagle                 ">Eagle                 </option>
                            <option value="Eterniti              ">Eterniti              </option>
                            <option value="ERF                   ">ERF                   </option>
                            <option value="Elva                  ">Elva                  </option>
                            <option value="Ferrari               ">Ferrari               </option>
                            <option value="FIAT                  ">FIAT                  </option>
                            <option value="Fibravan              ">Fibravan              </option>
                            <option value="Ford                  ">Ford                  </option>
                            <option value="Foton                 ">Foton                 </option>
                            <option value="Fyber                 ">Fyber                 </option>
                            <option value="Force                 ">Force                 </option>
                            <option value="Fornasari             ">Fornasari             </option>
                            <option value="Fisker                ">Fisker                </option>
                            <option value="Freightliner          ">Freightliner          </option>
                            <option value="Faw                   ">Faw                   </option>
                            <option value="FPV                   ">FPV                   </option>
                            <option value="Facel Vega            ">Facel Vega            </option>
                            <option value="Fioravanti            ">Fioravanti            </option>
                            <option value="Franklin              ">Franklin              </option>
                            <option value="Geely                 ">Geely                 </option>
                            <option value="GM                    ">GM                    </option>
                            <option value="Great Wall            ">Great Wall            </option>
                            <option value="Gurgel                ">Gurgel                </option>
                            <option value="GMC                   ">GMC                   </option>
                            <option value="Gorhan                ">Gorhan                </option>
                            <option value="Gumpert               ">Gumpert               </option>
                            <option value="Ginetta               ">Ginetta               </option>
                            <option value="Geo                   ">Geo                   </option>
                            <option value="GAC                   ">GAC                   </option>
                            <option value="Giocattolo            ">Giocattolo            </option>
                            <option value="Gaz                   ">Gaz                   </option>
                            <option value="Genesis               ">Genesis               </option>
                            <option value="Gillet                ">Gillet                </option>
                            <option value="Grinnall              ">Grinnall              </option>
                            <option value="Hafei                 ">Hafei                 </option>
                            <option value="Honda                 ">Honda                 </option>
                            <option value="Hyunday               ">Hyunday               </option>
                            <option value="Harley-Davidson       ">Harley-Davidson       </option>
                            <option value="Husqvarna             ">Husqvarna             </option>
                            <option value="Hummer                ">Hummer                </option>
                            <option value="Hindustan             ">Hindustan             </option>
                            <option value="Hongqi                ">Hongqi                </option>
                            <option value="Holden                ">Holden                </option>
                            <option value="HSV                   ">HSV                   </option>
                            <option value="Hino                  ">Hino                  </option>
                            <option value="Harper                ">Harper                </option>
                            <option value="Hero Motors           ">Hero Motors           </option>
                            <option value="Isuzu                 ">Isuzu                 </option>
                            <option value="Iveco                 ">Iveco                 </option>
                            <option value="ICML Motors           ">ICML Motors           </option>
                            <option value="Infiniti              ">Infiniti              </option>
                            <option value="Isdera                ">Isdera                </option>
                            <option value="Invicta               ">Invicta               </option>
                            <option value="Isotta Fraschini      ">Isotta Fraschini      </option>
                            <option value="Irizar                ">Irizar                </option>
                            <option value="Innoson               ">Innoson               </option>
                            <option value="Ivema                 ">Ivema                 </option>
                            <option value="Jeep                  ">Jeep                  </option>
                            <option value="Jaguar                ">Jaguar                </option>
                            <option value="JPX                   ">JPX                   </option>
                            <option value="Jinbei                ">Jinbei                </option>
                            <option value="JAC                   ">JAC                   </option>
                            <option value="James & Browne        ">James & Browne        </option>
                            <option value="Josse Car             ">Josse Car             </option>
                            <option value="Jiefang               ">Jiefang               </option>
                            <option value="Kia                   ">Kia                   </option>
                            <option value="Kahena                ">Kahena                </option>
                            <option value="Kasinski              ">Kasinski              </option>
                            <option value="KTM                   ">KTM                   </option>
                            <option value="Keinath               ">Keinath               </option>
                            <option value="Koenigsegg            ">Koenigsegg            </option>
                            <option value="Kamaz                 ">Kamaz                 </option>
                            <option value="Kawasaki              ">Kawasaki              </option>
                            <option value="Karma                 ">Karma                 </option>
                            <option value="Kaz                   ">Kaz                   </option>
                            <option value="Karrier               ">Karrier               </option>
                            <option value="Kantanka              ">Kantanka              </option>
                            <option value="Kiira                 ">Kiira                 </option>
                            <option value="Lada                  ">Lada                  </option>
                            <option value="Lamborghini           ">Lamborghini           </option>
                            <option value="Lancia                ">Lancia                </option>
                            <option value="Land Rover            ">Land Rover            </option>
                            <option value="Lexus                 ">Lexus                 </option>
                            <option value="Lifan                 ">Lifan                 </option>
                            <option value="Lotus                 ">Lotus                 </option>
                            <option value="Lobini                ">Lobini                </option>
                            <option value="Lincoln               ">Lincoln               </option>
                            <option value="Laferrari             ">Laferrari             </option>
                            <option value="Ligier                ">Ligier                </option>
                            <option value="Lagonda               ">Lagonda               </option>
                            <option value="Lucid                 ">Lucid                 </option>
                            <option value="Luxgen                ">Luxgen                </option>
                            <option value="Laraki                ">Laraki                </option>
                            <option value="Mahindra              ">Mahindra              </option>
                            <option value="Maserati              ">Maserati              </option>
                            <option value="Matra                 ">Matra                 </option>
                            <option value="MG                    ">MG                    </option>
                            <option value="Mazda                 ">Mazda                 </option>
                            <option value="Mclaren               ">Mclaren               </option>
                            <option value="Mercedes-Benz         ">Mercedes-Benz         </option>
                            <option value="Mercury               ">Mercury               </option>
                            <option value="Miura                 ">Miura                 </option>
                            <option value="Mini                  ">Mini                  </option>
                            <option value="Mitsubishi            ">Mitsubishi            </option>
                            <option value="Maruti                ">Maruti                </option>
                            <option value="Mitsuoka              ">Mitsuoka              </option>
                            <option value="Maybach               ">Maybach               </option>
                            <option value="Microcar              ">Microcar              </option>
                            <option value="Mack                  ">Mack                  </option>
                            <option value="Moskvich              ">Moskvich              </option>
                            <option value="Marussia              ">Marussia              </option>
                            <option value="MAN                   ">MAN                   </option>
                            <option value="Marcos                ">Marcos                </option>
                            <option value="Mazzanti              ">Mazzanti              </option>
                            <option value="Morris                ">Morris                </option>
                            <option value="Mustang               ">Mustang               </option>
                            <option value="MAZ                   ">MAZ                   </option>
                            <option value="Mobius                ">Mobius                </option>
                            <option value="Nissan                ">Nissan                </option>
                            <option value="Navistar              ">Navistar              </option>
                            <option value="Nota                  ">Nota                  </option>
                            <option value="Nami Okhta            ">Nami Okhta            </option>
                            <option value="Noble                 ">Noble                 </option>
                            <option value="Opel                  ">Opel                  </option>
                            <option value="Oldsmobile            ">Oldsmobile            </option>
                            <option value="Ohta Jidosha          ">Ohta Jidosha          </option>
                            <option value="Otosan                ">Otosan                </option>
                            <option value="ÖAF                   ">ÖAF                   </option>
                            <option value="Peugeot               ">Peugeot               </option>
                            <option value="Plymouth              ">Plymouth              </option>
                            <option value="Pontiac               ">Pontiac               </option>
                            <option value="Porsche               ">Porsche               </option>
                            <option value="Puma                  ">Puma                  </option>
                            <option value="Polaris               ">Polaris               </option>
                            <option value="Panoz                 ">Panoz                 </option>
                            <option value="Premier               ">Premier               </option>
                            <option value="Prince                ">Prince                </option>
                            <option value="Pagani                ">Pagani                </option>
                            <option value="Panhard               ">Panhard               </option>
                            <option value="PGO                   ">PGO                   </option>
                            <option value="Pyeonghwa             ">Pyeonghwa             </option>
                            <option value="Proto                 ">Proto                 </option>
                            <option value="Perodua               ">Perodua               </option>
                            <option value="Paccar                ">Paccar                </option>
                            <option value="Pininfarina           ">Pininfarina           </option>
                            <option value="Paramount Automotive  ">Paramount Automotive  </option>
                            <option value="Proforce              ">Proforce              </option>
                            <option value="Perana                ">Perana                </option>
                            <option value="Qvale                 ">Qvale                 </option>
                            <option value="Qoros                 ">Qoros                 </option>
                            <option value="RAM                   ">RAM                   </option>
                            <option value="Rely                  ">Rely                  </option>
                            <option value="Rover                 ">Rover                 </option>
                            <option value="Renault               ">Renault               </option>
                            <option value="Rolls-Royce           ">Rolls-Royce           </option>
                            <option value="Rootes                ">Rootes                </option>
                            <option value="Rambler               ">Rambler               </option>
                            <option value="Riley                 ">Riley                 </option>
                            <option value="Rossion               ">Rossion               </option>
                            <option value="RUF                   ">RUF                   </option>
                            <option value="Ronart                ">Ronart                </option>
                            <option value="Rimac                 ">Rimac                 </option>
                            <option value="SAAB                  ">SAAB                  </option>
                            <option value="Saturn                ">Saturn                </option>
                            <option value="SEAT                  ">SEAT                  </option>
                            <option value="Shineray              ">Shineray              </option>
                            <option value="Smart                 ">Smart                 </option>
                            <option value="Ssangyong             ">Ssangyong             </option>
                            <option value="Subaru                ">Subaru                </option>
                            <option value="Suzuki                ">Suzuki                </option>
                            <option value="Sundown               ">Sundown               </option>
                            <option value="Sino Truck            ">Sino Truck            </option>
                            <option value="Scania                ">Scania                </option>
                            <option value="Scion                 ">Scion                 </option>
                            <option value="Saic                  ">Saic                  </option>
                            <option value="Spetsteh              ">Spetsteh              </option>
                            <option value="Skoda                 ">Skoda                 </option>
                            <option value="Shelby                ">Shelby                </option>
                            <option value="Saleen                ">Saleen                </option>
                            <option value="Sterling              ">Sterling              </option>
                            <option value="Saroukh El-jamahiriya ">Saroukh El-jamahiriya </option>
                            <option value="Shaka Nynya           ">Shaka Nynya           </option>
                            <option value="TAC                   ">TAC                   </option>
                            <option value="Toyota                ">Toyota                </option>
                            <option value="Troller               ">Troller               </option>
                            <option value="Tata                  ">Tata                  </option>
                            <option value="Triumph               ">Triumph               </option>
                            <option value="Traxx                 ">Traxx                 </option>
                            <option value="Tesla                 ">Tesla                 </option>
                            <option value="Tatra                 ">Tatra                 </option>
                            <option value="Trion                 ">Trion                 </option>
                            <option value="The Turtle            ">The Turtle            </option>
                            <option value="Tropical              ">Tropical              </option>
                            <option value="UAZ                   ">UAZ                   </option>
                            <option value="Unimog                ">Unimog                </option>
                            <option value="UEV                   ">UEV                   </option>
                            <option value="Ultima                ">Ultima                </option>
                            <option value="Uri                   ">Uri                   </option>
                            <option value="URO                   ">URO                   </option>
                            <option value="Volvo                 ">Volvo                 </option>
                            <option value="Volkswagen            ">Volkswagen            </option>
                            <option value="Venturi               ">Venturi               </option>
                            <option value="Volga                 ">Volga                 </option>
                            <option value="Vauxhall              ">Vauxhall              </option>
                            <option value="Vector                ">Vector                </option>
                            <option value="Venucia               ">Venucia               </option>
                            <option value="Vulcan                ">Vulcan                </option>
                            <option value="Vomag                 ">Vomag                 </option>
                            <option value="Vanaja                ">Vanaja                </option>
                            <option value="Wake                  ">Wake                  </option>
                            <option value="Walk                  ">Walk                  </option>
                            <option value="Wuyang                ">Wuyang                </option>
                            <option value="Wheego                ">Wheego                </option>
                            <option value="Willeme               ">Willeme               </option>
                            <option value="Wallys                ">Wallys                </option>
                            <option value="Xbasiralsanayei       ">Xbasiralsanayei       </option>
                            <option value="XBehnam               ">XBehnam               </option>
                            <option value="Yamaha                ">Yamaha                </option>
                            <option value="Yale                  ">Yale                  </option>
                            <option value="Yuna                  ">Yuna                  </option>
                            <option value="Yugo                  ">Yugo                  </option>
                            <option value="Yulon                 ">Yulon                 </option>
                            <option value="Yarovit               ">Yarovit               </option>
                            <option value="Yorkshire             ">Yorkshire             </option>
                            <option value="Zimmer                ">Zimmer                </option>
                            <option value="Zyle Daewoo           ">Zyle Daewoo           </option>
                            <option value="Zotye                 ">Zotye                 </option>
                            <option value="Zil                   ">Zil                   </option>
                            <option value="Zastava               ">Zastava               </option>
                            <option value="Zolfe                 ">Zolfe                 </option>
                            <option value="Zenvo                 ">Zenvo                 </option>
                            <option value="Zender                ">Zender                </option>
                            <option value="Zwicky				   ">Zwicky				   </option>


                        </select>

                    <div class="form-group">
                        <label for="Status">Status:</label>

                        <select id="Status" name="vendido" class="custom-select col-md-2">

                            <option value="true">Vendido</option>

                            <option value="false">À Venda</option>

                        </select>

                    </div>

                    <div class="form-group">
                        <label for="ano">Ano:</label>

                        <select id="ano" name="ano" class="custom-select col-md-2">

                            <option value="2022">2022</option>
                            <option value="2021">2021</option>
                            <option value="2020">2020</option>
                            <option value="2019">2019</option>
                            <option value="2018">2018</option>
                            <option value="2017">2017</option>
                            <option value="2016">2016</option>
                            <option value="2015">2015</option>
                            <option value="2014">2014</option>
                            <option value="2013">2013</option>
                            <option value="2012">2012</option>
                            <option value="2011">2011</option>
                            <option value="2010">2010</option>
                            <option value="2009">2009</option>
                            <option value="2008">2008</option>
                            <option value="2007">2007</option>
                            <option value="2006">2006</option>
                            <option value="2005">2005</option>
                            <option value="2004">2004</option>
                            <option value="2003">2003</option>
                            <option value="2002">2002</option>
                            <option value="2001">2001</option>
                            <option value="2000">2000</option>
                            <option value="1999">1999</option>
                            <option value="1998">1998</option>
                            <option value="1997">1997</option>
                            <option value="1996">1996</option>
                            <option value="1995">1995</option>
                            <option value="1994">1994</option>
                            <option value="1993">1993</option>
                            <option value="1992">1992</option>
                            <option value="1991">1991</option>
                            <option value="1990">1990</option>
                            <option value="1989">1989</option>
                            <option value="1988">1988</option>
                            <option value="1987">1987</option>
                            <option value="1986">1986</option>
                            <option value="1985">1985</option>
                            <option value="1984">1984</option>
                            <option value="1983">1983</option>
                            <option value="1982">1982</option>
                            <option value="1981">1981</option>
                            <option value="1980">1980</option>

                        </select>

                    </div>


                <button type="submit" class="btn btn-primary">Criar</button>

        </form>

        <h2 align="center">Veículos cadastrados</h2>

        <table class="table table-striped table-hover mt-5">
            <thead class="thead-dark">
                <tr>
                    <th>ID</th>
                    <th>Veiculo</th>
                    <th>Marca</th>
                    <th>Ano</th>
                    <th>Descrição</th>
                    <th>Cor</th>
                    <th>Vendido</th>
                    <th>Data do cadastro</th>
                    <th>Data da última atualização</th>
                    <th>Ações</th>
                </tr>
            </thead>
            <tbody>
                <#list listaVeiculos as veiculo >
                    <tr>
                        <td>${veiculo.id}</td>
                        <td>${veiculo.nome}</td>
                        <td>${veiculo.marca}</td>
                        <td>${veiculo.ano}</td>
                        <td>${veiculo.descricao}</td>
                        <td>${veiculo.cor}</td>
                        <td>${veiculo.vendido?then('Vendido', 'À venda')}</td>
                        <td>${veiculo.created.format('dd-MM-yyyy HH:mm:ss')}</td>
                        <td>${veiculo.updated.format('dd-MM-yyyy HH:mm:ss')}</td>

                        <td>
                            <div class="d-flex d-justify-content-center">

                            <form method="post" action="/excluir/${veiculo.id}">

                                <button type="submit" class="btn btn-danger mr-3" >Excluir</button>

                            </form>

                            </div>
                        </td>
                    </tr>
                </#list>
            </tbody>
        </table>

        <h2 align="center">Total de veículos à venda: ${contagemVeiculosNaoVendidos}</h2>

        <table class="table table-striped table-hover mt-5">
            <thead class="thead-dark">
            <tr>
                <th>ID</th>
                <th>Veiculo</th>
                <th>Marca</th>
                <th>Ano</th>
                <th>Descrição</th>
                <th>Cor</th>
                <th>Vendido</th>
                <th>Data do cadastro</th>
                <th>Data da última atualização</th>

            </tr>
            </thead>
            <tbody>
            <#list listaVeiculosNaoVendidos as veiculo >
            <tr>
                <td>${veiculo.id}</td>
                <td>${veiculo.nome}</td>
                <td>${veiculo.marca}</td>
                <td>${veiculo.ano}</td>
                <td>${veiculo.descricao}</td>
                <td>${veiculo.cor}</td>
                <td>${veiculo.vendido?then('Vendido', 'À venda')}</td>
                <td>${veiculo.created.format('dd-MM-yyyy HH:mm:ss')}</td>
                <td>${veiculo.updated.format('dd-MM-yyyy HH:mm:ss')}</td>

            </tr>
            </#list>
            </tbody>
        </table>

        <h2 align="center">Veículos cadastrados na última semana</h2>

        <table class="table table-striped table-hover mt-5">
            <thead class="thead-dark">
            <tr>
                <th>ID</th>
                <th>Veiculo</th>
                <th>Marca</th>
                <th>Ano</th>
                <th>Descrição</th>
                <th>Cor</th>
                <th>Vendido</th>
                <th>Data do cadastro</th>
                <th>Data da última atualização</th>

            </tr>
            </thead>
            <tbody>
            <#list listaVeiculosCriadosSemanaPassada as veiculo >
            <tr>
                <td>${veiculo.id}</td>
                <td>${veiculo.nome}</td>
                <td>${veiculo.marca}</td>
                <td>${veiculo.ano}</td>
                <td>${veiculo.descricao}</td>
                <td>${veiculo.cor}</td>
                <td>${veiculo.vendido?then('Vendido', 'À venda')}</td>
                <td>${veiculo.created.format('dd-MM-yyyy HH:mm:ss')}</td>
                <td>${veiculo.updated.format('dd-MM-yyyy HH:mm:ss')}</td>

            </tr>
            </#list>
            </tbody>
        </table>

    </div>

</body>

</html>