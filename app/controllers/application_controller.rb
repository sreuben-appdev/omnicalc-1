class ApplicationController < ActionController::Base
  def blank_square_form

  
    render({ :template => "calculation_templates/square_form.html.erb"})
  end

  def calculate_square
    # params = {"elephant"=>"42"}

    @num = params.fetch("elephant").to_f

    @square_of_num = @num ** 2



    render({ :template => "calculation_templates/square_results.html.erb"})
  end

  def calculate_random

    @lower = params.fetch("user_min").to_f
    @upper = params.fetch("user_max").to_f
    @results = rand(@lower..@upper)
    render({ :template => "calculation_templates/rand_results.html.erb" })
  end

  def new_rand_calc


    render({ :template => "calculation_templates/new_results.html.erb" })
  end

  def new_payment



    render({ :template => "calculation_templates/new_payment.html.erb" })
  end

  def payment_results
    # params = {"user_apr"=>"1.7", "user_years"=>"5", "user_pv"=>"15"}

    @num_apr = params.fetch("user_apr").to_f
    @periods = params.fetch("user_years").to_f
    @principal = params.fetch("user_pv").to_f

        
    @apr = (@num_apr / 100) / 12
    
    @total_payment = ((@apr * @principal) / (1 - (1 + @apr) ** (-@periods * 12)))
    
    render({ :template => "calculation_templates/payment_results.html.erb" })
  end

  def new_square_root

    render({ :template => "calculation_templates/new_square_root.html.erb" })
  end

  def square_root_results


    render({ :template => "calculation_templates/square_root_results.html.erb" })
  end
end
