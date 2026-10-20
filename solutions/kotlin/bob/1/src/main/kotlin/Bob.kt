object Bob {
    fun hey(input: String): String {
        return when {
            input.endsWith("?") && input.uppercase() == input -> "Calm down, I know what I'm doing!"
            input.endsWith("?") -> "Sure"
            input.uppercase() == input -> "Whoa, chill out!"
            input.trim().isEmpty() -> "Fine. Be that way!"
            else -> "Whatever."
        }
    }
}
