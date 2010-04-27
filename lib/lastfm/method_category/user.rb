class Lastfm
  class User < MethodCategory
    def get_info(user)
      request('getInfo', {
        :user => user
      })
    end

    def get_weekly_chart_list(user)
      request('getWeeklyChartList', {
        :user => user
      })
    end

    def get_weekly_track_chart(user, from=nil, to=nil)
      params        = {:user => user}
      params[:from] = from if from
      params[:to]   = to if to

      request('getWeeklyTrackChart', params)
    end
  end
end
