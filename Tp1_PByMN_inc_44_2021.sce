clc;    clear;      close;


function [s_act] = serie_44(ema)

    err = 1
    n = 2
    k = 0
    s_ant = 3
    s_act = s_ant

    while err>ema
        p = 1
        for i=n:1:(n+2)
            p = p*i*((-1)^k)
        end

        s_act = s_act + 4/p
        //disp(string(s_act)+"  err : "+string(err))
        err = abs((s_act-s_ant)/s_act)
        s_ant = s_act
        n = n + 2
        k = k + 1
    end
endfunction
