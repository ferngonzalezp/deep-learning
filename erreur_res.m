function v = erreur_res(w,x,A,y)
    E = sortie_res(w,x,A);
    v = norm(y-E).^2/norm(y).^2;
end