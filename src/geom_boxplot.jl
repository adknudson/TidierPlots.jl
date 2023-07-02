macro geom_bar(exprs...)
    aes_dict, args_dict = extract_aes(:($(exprs)))
    
    return build_geom(aes_dict, args_dict, 
        ["x", "y"], # required aesthetics
        Makie.BoxPlot, # function for visual layer
        AlgebraOfGraphics.mapping()) # function for analysis layer

end