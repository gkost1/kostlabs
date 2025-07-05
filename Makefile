.DEFAULT_GOAL := dev

# Path aliases
FRONTEND_DIR := client
BACKEND_DIR := server

# Output and PID paths
BACKEND_LOG := backend.log
FRONTEND_LOG := frontend.log
BACKEND_PID := backend.pid
FRONTEND_PID := frontend.pid

dev:
	@echo "Starting backend..."
	@cd $(BACKEND_DIR) && cargo watch -x run > ../$(BACKEND_LOG) 2>&1 & echo $$! > ../$(BACKEND_PID)
	@sleep 2  # allow backend time to boot

	@echo "Starting frontend..."
	@cd $(FRONTEND_DIR) && npm run dev > ../$(FRONTEND_LOG) 2>&1 & echo $$! > ../$(FRONTEND_PID)
	@sleep 1
	@echo "Development environment is running."
	@echo "  Backend: http://localhost:3000/"
	@echo "  Frontend: http://localhost:5173/"

lint: lint-backend lint-frontend
	@echo "Linting complete for backend and frontend."

lint-backend:
	@echo "Running Rust formatter..."
	cd $(BACKEND_DIR) && cargo fmt
	@echo "Running Rust clippy..."
	cd $(BACKEND_DIR) && cargo clippy

lint-frontend:
	@echo "Running frontend lint..."
	cd $(FRONTEND_DIR) && npm run lint