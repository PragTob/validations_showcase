event =
  Event.new(
    name: "RUG::B",
    location: "Dalia Research",
    date: "07.02.2019",
    crew_arrives_at: "18:55",
    performers_arrive_at: "19:15",
    open_at: "19:00",
    starts_at: "19:30",
    ends_at: "22:00"
  )

  event.valid?
  pp event