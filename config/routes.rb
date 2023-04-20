Rails.application.routes.draw do

  get("/square/new",{ :controller => "application", :action => "blank_square_form"})

  get("/square/results", { :controller => "application", :action => "calculate_square"})

  get("/random/results", { :controller => "application", :action => "calculate_random"})

  get("/random/new", { :controller => "application", :action => "new_rand_calc"})

  get("/payment/new", { :controller => "application", :action => "new_payment"})

  get("/payment/results", { :controller => "application", :action => "payment_results"})

  get("/square_root/new", { :controller => "application", :action => "new_square_root"})

  get("/square_root/results", { :controller => "application", :action => "square_root_results"})


end
