module.exports = (sequelize, dataTypes) => {
    let alias = 'Service';
    let cols = {
        id: {
            type: dataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },
        name: dataTypes.STRING,
        description: dataTypes.STRING,
        price: dataTypes.DECIMAL,
        discount: dataTypes.INTEGER,
        recommended: dataTypes.INTEGER,
        image: dataTypes.STRING
    };
    /*let config = {
        tableName: 'Servs',
        timestamps: false
    };*/
        
    
    const Service = sequelize.define(alias, cols)
    //Aquí creo mi relación entre Servicios (Services) y Categorias (Categories)
    Service.associate = function(models) {
        Service.belongsTo(models.Category, {
                as : 'category',
                foreignKey: 'categoryId'
            
        });

        //Aquí hago la relación entre mi módelo Service y mi tabla items  la cual contiene todo lo que el usuario está comprando
        Service.hasMany(models.Item, {
            as: "items",
            foreignKey: "productId",
        });

        /*Service.belongsTo(models.User, {
            as: "user",
            foreignKey: "userId",
        });*/

    };
    return Service
}
