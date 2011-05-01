module ActionView
  # = Action View Rendering
  #
  # Implements methods that allow rendering from a view context.
  # In order to use this module, all you need is to implement
  # view_renderer that returns an ActionView::Renderer object.
  module Rendering
    # Returns the result of a render that's dictated by the options hash. The primary options are:
    #
    # * <tt>:partial</tt> - See ActionView::Partials.
    # * <tt>:file</tt> - Renders an explicit template file (this used to be the old default), add :locals to pass in those.
    # * <tt>:inline</tt> - Renders an inline template similar to how it's done in the controller.
    # * <tt>:text</tt> - Renders the text passed in out.
    #
    # If no options hash is passed or :update specified, the default is to render a partial and use the second parameter
    # as the locals hash.
    # def render(options = {}, locals = {}, &block)
    def render(*args, &block)
      view_renderer.render(self, *args, &block)
    end

    # TODO: This is temporary, but the previous render is sticking.
    def render_body(*args, &block)
      view_renderer.render_body(self, *args, &block)
    end
  end
end