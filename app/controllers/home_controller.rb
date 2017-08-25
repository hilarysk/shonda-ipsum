class HomeController < ApplicationController
  def index
    @paragraphs = [phrases.sample(2).join(" ")]
  end

  def text
    paragraph_number = params[:paragraph_number].presence || 2
    original_text = phrases

    @paragraphs = []
    paragraph_number.to_i.times do
      selected_text = original_text.sample(4)
      paragraph = selected_text.join(" ")
      original_text = original_text - selected_text
      @paragraphs.push paragraph
    end

    render partial: "text", locals: { paragraphs: @paragraphs }
  end

  private

  def phrases
    ["You did a terrible thing. It doesn't mean you're a terrible person.",
      "I am strong and I am comfortable with being strong.",
      "So I'm bisexual. So what? It's a thing and it's real.",
      "Screw beautiful. I'm brilliant! You want to appease me, compliment my brain!",
      "Whatever it takes, just find your voice, and when you do, fill the damn silence.",
      "I want painful, devastating, life-changing, extraordinary love.",
      "I am not a toy you can play with when you're bored, or lonely, or horny.",
      "I am not a fantasy. If you want me, earn me.",
      "Maybe the struggle, the climb, one obstacle after another… maybe that's just life.",
      "Be better than anyone here, and don't give a damn what anyone thinks.",
      "You can waste your lives drawing lines, or you can live your life crossing them.",
      "I am fine dancing alone.", "Don't let what he wants eclipse what you need.",
      "If you want crappy things to stop happening to you, then stop accepting crap and demand something more.",
      "Pretty good is not enough; I want to be great.",
      "Since when has the possession of ovaries become an insult?",
      "America can forgive a man one hundred infidelities, but they will never forgive a woman even one.",
      "If she was a man, you'd say she was formidable, or bold, or right.",
      "He doesn't love me. But here's the thing: I love me. So I'm done.",
      "I'm good at my job, Leo. I am a lion up there. I own that room.",
      "They can't fathom the concept that my life doesn't revolve around you.",
      "Another thing I just don't do anymore is wax. So it's 1976 down there.",
      "I am many things; stupid is not one of them.",
      "It's handled.",
      "I'm not deranged; I'm just divorced.",
      "Whatever happens, we do not give up. It is my name on that door, and I do not give up."
    ]
  end
end
