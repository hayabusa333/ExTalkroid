defmodule ExTalkroid.Cli do
  def main(args) do
    options = parse_args(args)
    comment = options[:comment]
    case options[:talkroid] do
      "voiceroid" ->
        ExTalkroid.Voiceroid.talk(comment)
      "softalk" ->
        ExTalkroid.Softalk.init()
        ExTalkroid.Softalk.talk(comment)
      _ ->
        ExTalkroid.Softalk.init()
        ExTalkroid.Softalk.talk(comment)
    end
  end

  defp parse_args(args) do
    {options, _, _} = OptionParser.parse(args,
      switches: [comment: :string, help: :boolean, talkroid: :string],
      aliases: [c: :comment ,h: :help, t: :talkroid]
    )

    if(options[:help]) do
      IO.puts """
       --help : -h          Help information.
       --comment : -c       Value to talk softalk
       --talkroid : -t      select voiceroid or softalk (default softalk)
      """
      System.halt(0)
    end


    options
  end
end
