.class public Lcom/google/android/gms/location/ActivityRecognitionResult;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/location/ActivityRecognitionResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/DetectedActivity;",
            ">;"
        }
    .end annotation
.end field

.field b:J

.field c:J

.field d:I

.field e:Landroid/os/Bundle;

.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/location/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/location/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/ActivityRecognitionResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/util/List;JJILandroid/os/Bundle;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/DetectedActivity;",
            ">;JJI",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->f:I

    iput-object p2, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->a:Ljava/util/List;

    iput-wide p3, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->b:J

    iput-wide p5, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->c:J

    iput p7, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->d:I

    iput-object p8, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->e:Landroid/os/Bundle;

    return-void
.end method

.method private static a(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_8

    if-nez p1, :cond_8

    move v0, v1

    :goto_7
    return v0

    :cond_8
    if-nez p0, :cond_c

    if-nez p1, :cond_10

    :cond_c
    if-eqz p0, :cond_12

    if-nez p1, :cond_12

    :cond_10
    move v0, v2

    goto :goto_7

    :cond_12
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v3

    if-eq v0, v3, :cond_1e

    move v0, v2

    goto :goto_7

    :cond_1e
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_70

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3a

    move v0, v2

    goto :goto_7

    :cond_3a
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_48

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_26

    move v0, v2

    goto :goto_7

    :cond_48
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Landroid/os/Bundle;

    if-eqz v4, :cond_60

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/android/gms/location/ActivityRecognitionResult;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_26

    move v0, v2

    goto :goto_7

    :cond_60
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    move v0, v2

    goto :goto_7

    :cond_70
    move v0, v1

    goto :goto_7
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->f:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    :cond_11
    move v0, v1

    goto :goto_4

    :cond_13
    check-cast p1, Lcom/google/android/gms/location/ActivityRecognitionResult;

    iget-wide v2, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->b:J

    iget-wide v4, p1, Lcom/google/android/gms/location/ActivityRecognitionResult;->b:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3f

    iget-wide v2, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->c:J

    iget-wide v4, p1, Lcom/google/android/gms/location/ActivityRecognitionResult;->c:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3f

    iget v2, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->d:I

    iget v3, p1, Lcom/google/android/gms/location/ActivityRecognitionResult;->d:I

    if-ne v2, v3, :cond_3f

    iget-object v2, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->a:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/location/ActivityRecognitionResult;->a:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzz;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    iget-object v2, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->e:Landroid/os/Bundle;

    iget-object v3, p1, Lcom/google/android/gms/location/ActivityRecognitionResult;->e:Landroid/os/Bundle;

    invoke-static {v2, v3}, Lcom/google/android/gms/location/ActivityRecognitionResult;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3f
    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 5

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->a:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->e:Landroid/os/Bundle;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzz;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->a:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->b:J

    iget-wide v4, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->c:J

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x7c

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v6, "ActivityRecognitionResult [probableActivities="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", timeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", elapsedRealtimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/zzb;->a(Lcom/google/android/gms/location/ActivityRecognitionResult;Landroid/os/Parcel;I)V

    return-void
.end method
