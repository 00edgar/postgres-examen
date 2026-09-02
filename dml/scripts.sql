-- Insertar datos en la tabla proveedores
INSERT INTO proveedores (nombre, contacto, telefono, email)
VALUES
('Proveedor A', 'Ana Gonzalez', '23456788', 'juan@proveedora.com'),
('Proveedor B', 'Juan Martinez', '123456789', 'juan@proveedora.com'),
('Proveedor C', 'Lestere Garcia', '123456789', 'juan@proveedora.com'),
('Proveedor D', 'Alex Ordoñes', '123456789', 'juan@proveedora.com'),
('Proveedor E', 'sebastian Garcia', '123456789', 'juan@proveedora.com'),
('Proveedor F', 'Carlos Marroquin', '123456789', 'juan@proveedora.com'),
('Proveedor G', 'Angela Gonzalez', '123456789', 'juan@proveedora.com'),
('Proveedor H', 'Enrique Gomez', '123456789', 'juan@proveedora.com'),
('Proveedor I', 'Lucia Gutierrez', '123456789', 'juan@proveedora.com'),
('Proveedor J', 'Maria Lopez', '987654321', 'maria@proveedorb.com'),
('Proveedor K', 'Juan Perez', '123456789', 'juan@proveedora.com');


INSERT INTO categorias (nombre)
VALUES
('laptop'),
('telefono'),
('componentes electronicos');

INSERT INTO productos (nombre, precio, stock, id_categoria, id_proveedor)
VALUES
('Televisor samsung ', 500.00, 10, 1, 1),
('samsung A07', 1200.00, 50, 2, 2),
('resistencias 100k', 1.50, 100, 3, 3),
('Televisor xiaomi ', 500.00, 10, 1, 4),
('samsung S24', 1200.00, 50, 2, 2),
('diodos zener', 1.50, 100, 3, 5),
('Televisor LG ', 500.00, 10, 1, 1),
('samsung S16 plus', 1200.00, 50, 2, 6),
('poteciometros', 1.50, 100, 3, 7),
('Televisor plasma ', 500.00, 10, 1, 8),
('samsung A06', 1200.00, 50, 2, 2),
('capacitores ceramicos', 1.50, 100, 3, 9);

INSERT INTO clientes (nombre, email, telefono)
VALUES
('Carlos Gomez', 'carlos@gmail.com', '111222333'),
('LuciaTorres', 'ana@gmail.com', '444555666'),
('Carlos Gomez', 'carlos@gmail.com', '111222333'),
('Ana Lopez', 'ana@gmail.com', '444555666'),
('Anderson Martin', 'carlos@gmail.com', '111222333'),
('Diego Alvarado', 'ana@gmail.com', '444555666'),
('Pedro Martinez', 'carlos@gmail.com', '111222333'),
('Juan Herrera', 'ana@gmail.com', '444555666');

INSERT INTO ventas (id_cliente)
VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7);

INSERT INTO detalles_ventas (id_venta, id_producto, cantidad, precio_unitario)
VALUES
(1, 1, 1, 500.00),
(1, 3, 2, 1.50),
(2, 2, 3, 20.00);