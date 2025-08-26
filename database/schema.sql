CREATE TABLE Project (
    project_id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    category VARCHAR(50),
    target_audience VARCHAR(50),
    logo_prompt TEXT,
    color_scheme VARCHAR(50)
);

CREATE TABLE Features (
    feature_id INT PRIMARY KEY,
    feature_name VARCHAR(255) NOT NULL,
    project_id INT,
    FOREIGN KEY (project_id) REFERENCES Project(project_id)
);

CREATE TABLE TechStack (
    techstack_id INT PRIMARY KEY,
    techstack_name VARCHAR(255) NOT NULL,
    project_id INT,
    FOREIGN KEY (project_id) REFERENCES Project(project_id)
);

INSERT INTO Project (project_id, name, description, category, target_audience, logo_prompt, color_scheme) 
VALUES (1, 'TestProject', 'Une application de test pour vérifier la génération complète', 'Utilitaire', 'Développeurs', 'Un logo abstrait représentant les tests et la vérification', '#4CAF50,#2196F3');

INSERT INTO Features (feature_id, feature_name, project_id) 
VALUES (1, 'Test de génération', 1),
       (2, 'Vérification de fonctionnalités', 1),
       (3, 'Validation de résultats', 1);

INSERT INTO TechStack (techstack_id, techstack_name, project_id) 
VALUES (1, 'React', 1),
       (2, 'Node.js', 1),
       (3, 'PostgreSQL', 1);