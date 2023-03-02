defmodule Greeting do
  def main(args) do
    {opts, _word, _errors} = OptionParser.parse(args, switches: [time: :string, upcase: :boolean])
    string = "Good #{opts[:time] || "morning"}!"
    string = if opts[:upcase], do: String.upcase(string), else: string
    IO.puts(IO.ANSI.format([:bright, :red, string], true))
  end
end
