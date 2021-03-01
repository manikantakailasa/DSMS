 function fileName()
            {
                var e=document.getElementById("DFNo");
               // var struser=e.options[e.selectedIndex].text;  
                switch(e.selectedIndex)
                {
                    case 1:
                    { 
                        document.getElementById("DocFileNo").value="File Type 1";              
                        break;
                    }
                     case 2:
                    { 
                        document.getElementById("DocFileNo").value="File Type 2";              
                        break;
                    }
                     case 3:
                    { 
                        document.getElementById("DocFileNo").value="File Type 3";              
                        break;
                    }
                      case 4:
                    { 
                        document.getElementById("DocFileNo").value="File Type 4";              
                        break;
                    }
                      case 5:
                    { 
                        document.getElementById("DocFileNo").value="File Type 5";              
                        break;
                    }
                      case 6:
                    { 
                        document.getElementById("DocFileNo").value="File Type 6";              
                        break;
                    }
                      case 7:
                    { 
                        document.getElementById("DocFileNo").value="File Type 7";              
                        break;
                    }
                      case 8:
                    { 
                        document.getElementById("DocFileNo").value="File Type 8";              
                        break;
                    }
                      case 9:
                    { 
                        document.getElementById("DocFileNo").value="File Type 9";              
                        break;
                    }
                    default :
                    {
                       document.getElementById("DocFileNo").value="";                     
                    }                   
                        
                }
            }

