module Rulers
  class Application
    def get_controller_and_action(env)
      _host, controller, action, _after = env["PATH_INFO"].split("/", 4)
      controller = controller.capitalize
      controller += 'Controller'
      [Object.const_get(controller), action]
    end
  end
end
