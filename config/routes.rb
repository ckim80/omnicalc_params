Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get("/flexible/square/:num", {:controller => "calculations", :action => "flex_square_5"})
  get("/flexible/square_root/:num", {:controller => "calculations", :action => "flex_square_root_5"})

  get("/square/new", {:controller => "calculations", :action => "square_form"})
  get("/square/results", {:controller => "calculations", :action => "square"})

  get("/square_root/new", {:controller => "calculations", :action => "square_root_form"})
  get("/square_root/results", {:controller => "calculations", :action => "square_root"})

  get("/flexible/payment/:num1/:num2/:num3", {:controller => "calculations", :action => "flex_payment_5"})

  get("/payment/new", {:controller => "calculations", :action => "payment_form"})
  get("/payment/results", {:controller => "calculations", :action => "payment"})

  get("/flexible/random/:num1/:num2", {:controller => "calculations", :action => "flex_random_5"})
  get("/random/new", {:controller => "calculations", :action => "random_form"})
  get("/random/results", {:controller => "calculations", :action => "random"})

  get("/word_count/new", {:controller => "calculations", :action => "word_count_form"})
  get("/word_count/results", {:controller => "calculations", :action => "word_count"})
end
