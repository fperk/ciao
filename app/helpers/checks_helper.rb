# frozen_string_literal: true

module ChecksHelper
  # Converts the status to the corresponding CSS class
  # to control HTML element classes based on status
  # @param status [String] this is either the HTTP status code or an error, `1XX..5XX` or `e`
  # @return [String] the CSS class for the corresponding HTTP status
  def class_for_status(status)
    case status.to_i
    when 100..199
      'secondary'
    when 200..299
      'success'
    when 300..399
      'info'
    when 400..499
      'warning'
    else
      'danger'
    end
  end

  def class_for_ssl_expiration(ssl_expires_in)
    case ssl_expires_in.to_i
    when 0..7
      'danger'
    when 8..30
      'warning'
    when 31..9999
      'success'
    end
  end

  # Converts the healthcheck's active flag to CSS class
  # to control HTML element color
  # @param active [Boolean] the healthcheck's active flag, `true` or `false`
  # @return [String] the corresponding color (CSS class)
  def class_for_active(active)
    active ? 'text-green' : 'text-red'
  end

  # Converts the healthcheck's active flag to CSS class
  # to control checkbox icon
  # @param active [Boolean] the healthcheck's active flag, `true` or `false`
  # @return [String] the corresponding checkbox icon (CSS class)
  def class_for_active_checkbox(active)
    active ? 'fe-check' : 'fe-minus'
  end

  # Converts the healthy percentage to CSS class
  # to control healthy/unhealthy colors
  # @param percent [Float] the healthy percentage
  # @return [String] the corresponding color (CSS class)
  def class_for_healthy(percent)
    percent == 100 ? 'text-green' : 'text-red'
  end
end
