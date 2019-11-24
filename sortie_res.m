function E = sortie_res(w,x,A)
    E = zeros(size(x));
    S = cell(6,1);
    Ei = cell(7,1);
    Ei{1} = x;
    Ei{2} = x;
    for i = 1:2
        w0 = w(4*i-3);
        w1 = w(4*i-2);
        w2 = w(4*i-1);
        w3 = w(4*1);
        S{2*i} = w0 + w1*Ei{i};
        Ei{2*i+1} = A(S{i+1});
        S{2*i+1} = w2 + w3*Ei{i+1};
        Ei{2*i+2} = A(S{i+2});
    end
    S{6} = w(9) + w(10)*Ei{5} + w(11)*Ei{6};
    Ei{7} = A(S{6});
    E = Ei{7};
end