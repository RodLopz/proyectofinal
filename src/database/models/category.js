module.exports = (sequelize, dataTypes) => {
    let alias = 'Category';
    let cols = {
        id: {
            type: dataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },
        name: dataTypes.STRING,
    };
    /*let config = {
        tableName: 'categories',
        timestamps: false
    };*/
    const Category = sequelize.define(alias, cols) 
    //Aquí creo la relación con la tabla Services  - OJo: Relación de 1 a muchos
    Category.associate = function(models){
        Category.hasMany(models.Service,{
                as: 'services',
                foreignKey: 'categoryId'})}   
    return Category
}