module EventHelpers
  def event_title_for(event)
    "#{event.title} — #{Date.parse(event.date).strftime('%d/%m/%Y')}"
  end

  def event_details_for(event)
    [talks_count_for(event), participants_count_for(event)].join(', ')
  end

  private

  def talks_count_for(event)
    if event.talks.size > 0
      pluralize(event.talks.size, 'talk')
    else
      '1 apéro'
    end
  end

  def participants_count_for(event)
    "#{event.participants_count} participants"
  end
end
