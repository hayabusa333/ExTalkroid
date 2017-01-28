defmodule ExTalkroid.Cli do
  def main(args) do
    options = parse_args(args)
    ExTalkroid.Softalk.init()
    comment = options[:comment]
    ExTalkroid.Softalk.talk(comment)
  end

  defp parse_args(args) do
    {options, _, _} = OptionParser.parse(args,
      switches: [comment: :string]
    )
    options
  end
end
