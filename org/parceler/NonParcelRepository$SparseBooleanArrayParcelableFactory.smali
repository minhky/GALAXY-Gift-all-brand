.class Lorg/parceler/NonParcelRepository$SparseBooleanArrayParcelableFactory;
.super Ljava/lang/Object;
.source "NonParcelRepository.java"

# interfaces
.implements Lorg/parceler/Parcels$ParcelableFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/parceler/Parcels$ParcelableFactory",
        "<",
        "Landroid/util/SparseBooleanArray;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/parceler/NonParcelRepository$1;)V
    .registers 2

    .prologue
    .line 140
    invoke-direct {p0}, Lorg/parceler/NonParcelRepository$SparseBooleanArrayParcelableFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/util/SparseBooleanArray;)Landroid/os/Parcelable;
    .registers 3

    .prologue
    .line 144
    new-instance v0, Lorg/parceler/NonParcelRepository$SparseBooleanArrayParcelable;

    invoke-direct {v0, p1}, Lorg/parceler/NonParcelRepository$SparseBooleanArrayParcelable;-><init>(Landroid/util/SparseBooleanArray;)V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Landroid/os/Parcelable;
    .registers 3

    .prologue
    .line 140
    check-cast p1, Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Lorg/parceler/NonParcelRepository$SparseBooleanArrayParcelableFactory;->a(Landroid/util/SparseBooleanArray;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method
