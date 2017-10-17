<%= @presenter.calc_stableford(eval("@score.score_" + i.to_s),  eval("@course.par_" + i.to_s), @presenter.calc_shots_on_hole(@score.hc,  eval("@course.si_" + i.to_s))) %>

<p>HI!!!!</p>
$("p").toggle();
//$().html("<%= j render(partial: 'pts', locals: {i: 7}) %>");

<%= @presenter.calc_stableford(eval("@score.score_" + i.to_s),  eval("@course.par_" + i.to_s), @presenter.calc_shots_on_hole(@score.hc,  eval("@course.si_" + i.to_s))) %>

//$().html("<%= j render(partial: 'jsts', locals: {wherefrom: "js", score: @score, course: @course, i: 7}) %>")

f.number_field("score_7")



<%= link_to 'Update Points', myx_score_path(:sc => @score["score_7"]), :method => :patch, id: "myx", remote: true %>

<script>
			//var sc7_value = document.getElementById("sc7_id").value
		</script>

		<%= f.number_field ("score_" + i.to_s).to_sym, class: "form-control", placeholder: "Score", id: ("sc" + i.to_s + "_id") %>


		    def myx
      #binding.pry
      #@user   = User.find(params[:id])
      #@course = @user.course

      #@score = current_user.scores.find(params[:id])
      presenter = ScorePresenters::GolfScorePresenter.new 
    
      #@pts = presenter.calc_stableford(2, 5, 1)

      @pts = params[:score]

      respond_to do |format|
        format.js { }
      end
    end

    <%= logger.debug("Score:" + score.to_s + " Par:" + par.to_s + " HC:" + hc.to_s + " Stroke Index:" + stroke_index.to_s) %>

    data: {'score': this.value, :par => eval("@course.par_" + i.to_s), :hc => @score.hc, :stroke_index => eval("@course.si_" + i.to_s)}

    var pts_id = 'td#pts_' + <%=@hole_number>

    + <%=@hole_number%>





    alert('<%=points_totals[:total_points]%>')

    if id*='score_score' {field_id = 'strokes'} else if id*='score_putts' {field_id = 'putts'} else {field_id = ''};

    logger.debug('*******************************')
    logger.debug(@new_score.inspect)
    logger.debug('*******************************')