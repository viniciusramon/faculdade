<?php
    function digito(dig){
        if($res.value.length < 12){
            if($res.value != "0")
                $res.value += dig;
            else
                $res.value = dig;
        }
    }
    
    function operacao(ope){
        $v1.value = $res.value;
        $op.value = ope;
        limpar();
    }
    
    function separador(){
        if(res.value.indexOf(".")<0)
            $res.value += ".";
    }
    
    function limpar(){
        res.value = "0";
    }
    
    function total(){
        if(op.value == "+")
            res.value = parseFloat(v1.value) + parseFloat(res.value);
        else if(op.value == "-")
            res.value = parseFloat(v1.value) - parseFloat(res.value);
        else if(op.value == "*")
            res.value = parseFloat(v1.value) * parseFloat(res.value);
        else if(op.value == "/"){
            if(res.value != 0)
                res.value = parseFloat(v1.value) / parseFloat(res.value);
            else
                res.value = "Erro";
        }
    }
?>