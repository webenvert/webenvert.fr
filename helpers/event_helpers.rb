module EventHelpers
  def event_title_for(event)
    "#{event.title} — #{event.date.strftime('%d/%m/%Y')}"
  end

  def event_details_for(event)
    [talks_count_for(event), participants_count_for(event)].join(', ')
  end

  private

  def talks_count_for(event)
    if event.data[:talks].present?
      pluralize(event.data[:talks].size, 'talk')
    else
      '1 apéro'
    end
  end

  def participants_count_for(event)
    "#{event.data[:participants_count]} participants"
  end
end
