class SubscriptionsController

  def choose_plan
    plan = params[:plan]

    @subscription = current_account.subscription

    if @subscription.present? && @subscription.update(plan: plan)
      # plan updated successfully
      current_account.setup_stripe_subscription
    else
      # plan was updated
    end
  end

end
